<?php

/**
 * File containing the Blocks Component class
 *
 * @author Thiago Campos Viana <thiagocamposviana@gmail.com>
 */

namespace Tutei\BaseBundle\Classes\Components;

use eZ\Publish\API\Repository\Values\Content\Query;
use eZ\Publish\API\Repository\Values\Content\Query\Criterion\ContentTypeIdentifier;
use eZ\Publish\API\Repository\Values\Content\Query\Criterion\LogicalAnd;
use eZ\Publish\API\Repository\Values\Content\Query\Criterion\ParentLocationId;
use eZ\Publish\API\Repository\Values\Content\Query\SortClause\LocationPriority;
use Symfony\Component\HttpFoundation\Response;
use Tutei\BaseBundle\Classes\SearchHelper;

/**
 * Renders page Blocks
 */
class Blocks extends Component
{

    /**
     * {@inheritDoc}
     */
    public function render()
    {

        $pathString = $this->parameters['pathString'];
        $locations = explode('/', $pathString);

        $locationId = $locations[count($locations) - 2];

        $searchService = $this->controller->getRepository()->getSearchService();

        $query = new Query();

        $query->criterion = new LogicalAnd(
            array(
            new ContentTypeIdentifier(array('block')),
            new ParentLocationId($locationId)
            )
        );

        $repository = $this->controller->getRepository();
        $locationService = $repository->getLocationService();
        $location = $locationService->loadLocation($locationId);

        $query->sortClauses = array(
            SearchHelper::createSortClause($location)
        );
        $list = $searchService->findContent($query);


        $blocks = array();

        foreach ($list->searchHits as $block) {
            
            $limit = null;
            $columns = $block->valueObject->fields['columns'][$this->controller->getLanguage()]->value;
            $rows = $block->valueObject->fields['rows'][$this->controller->getLanguage()]->value;
            $offset = $block->valueObject->fields['offset'][$this->controller->getLanguage()]->value;
            if ($rows > 0) {
                $limit = $rows * $columns;
            }
            $blockLocationId = $block->valueObject->versionInfo->contentInfo->mainLocationId;
            $blocks[$blockLocationId]['content'] = $block;

            if (!isset($block->valueObject->fields['source'][$this->controller->getLanguage()]->destinationContentId)) {               

                $blocks[$blockLocationId]['children'] = SearchHelper::fetchChildren($this->controller, $blockLocationId, array(), $limit, $offset);
            } else {

                $sourceId = $block->valueObject->fields['source'][$this->controller->getLanguage()]->destinationContentId;
                $sourceObj = $repository->getContentService()->loadContent($sourceId);
                $parentId = $sourceObj->versionInfo->contentInfo->mainLocationId;
                $blocks[$blockLocationId]['children'] = SearchHelper::fetchChildren($this->controller, $parentId, array(), $limit, $offset);

            }
        }

        $siteaccess = $this->controller->getContainer()->get('ezpublish.siteaccess')->name;
        $twigGlobals = $this->controller->getContainer()->get('twig')->getGlobals();
        $language = $twigGlobals['siteaccess'][$siteaccess]['language'];
        $contentService = $repository->getContentService();

        $relationList = array();

        foreach ($blocks as $b) {
            foreach ($b['children']->searchHits as $content) {

                if (isset($content->valueObject->fields['link_object'][$language]->destinationContentId)) {
                    $objId = $content->valueObject->fields['link_object'][$language]->destinationContentId;
                    $related = $contentService->loadContent($objId);

                    $relationList[$objId] = $locationService->loadLocation($related->versionInfo->contentInfo->mainLocationId);
                }
            }
        }

        $response = new Response();

        $response->setPublic();
        $response->setSharedMaxAge(86400);

        // Menu will expire when top location cache expires.
        $response->headers->set('X-Location-Id', $locationId);

        return $this->controller->render(
                'TuteiBaseBundle:parts:page_blocks.html.twig', array(
                'blocks' => $blocks,
                'relation_list' => $relationList
                ), $response
        );
    }

}
