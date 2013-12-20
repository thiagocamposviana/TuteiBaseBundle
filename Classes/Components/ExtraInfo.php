<?php
/**
 * File containing the ExtraInfo Component class
 *
 * @author Thiago Campos Viana <thiagocamposviana@gmail.com>
 */

namespace Tutei\BaseBundle\Classes\Components;

use eZ\Publish\API\Repository\Values\Content\Query;
use eZ\Publish\API\Repository\Values\Content\Query\Criterion\ContentTypeIdentifier;
use eZ\Publish\API\Repository\Values\Content\Query\Criterion\LogicalAnd;
use eZ\Publish\API\Repository\Values\Content\Query\Criterion\ParentLocationId;
use Symfony\Component\HttpFoundation\Response;
use Tutei\BaseBundle\Classes\SearchHelper;

/**
 * Renders page ExtraInfo
 */
class ExtraInfo extends Component
{

    /**
     * {@inheritDoc}
     */
    public function render()
    {

        $pathString = $this->parameters['pathString'];
        if ($pathString == '/1/') {
            return new Response();
        }


        $locations = explode('/', $pathString);

        $locationId = $locations[count($locations) - 2];

        $searchService = $this->controller->getRepository()->getSearchService();

        $query = new Query();

        $query->criterion = new LogicalAnd(
            array(
            new ContentTypeIdentifier(array('infobox')),
            new ParentLocationId(array($locationId))
            )
        );

        $repository = $this->controller->getRepository();
        $locationService = $repository->getLocationService();
        $location = $locationService->loadLocation($locationId);

        $query->sortClauses = array(
            SearchHelper::createSortClause($location)
        );

        $list = $searchService->findContent($query);

        if ($list->totalCount == 0) {
            $this->parameters['pathString'] = str_replace("/$locationId/", "/", $pathString);
            return $this->render();
        }


        $language = $this->controller->getLanguage();
        $contentService = $repository->getContentService();

        $relationList = array();
        $sourceItems = array();
        foreach ($list->searchHits as $content) {
            if (isset($content->valueObject->fields['link_object'][$language]->destinationContentId)) {
                $objId = $content->valueObject->fields['link_object'][$language]->destinationContentId;
                $related = $contentService->loadContent($objId);
                $relationList[$objId] = $locationService->loadLocation($related->versionInfo->contentInfo->mainLocationId);
            }

            if (isset($content->valueObject->fields['source'][$language]->destinationContentId)) {
                $srcId = $content->valueObject->fields['source'][$language]->destinationContentId;
                $source = $contentService->loadContent($objId);
                $query = new Query();

                $query->criterion = new LogicalAnd(
                    array(
                    new ParentLocationId($source->versionInfo->contentInfo->mainLocationId)
                    )
                );

                $query->limit = 4;

                $sourceItems[$srcId] = $searchService->findContent($query);
            }
        }

        $response = new Response();
        return $this->controller->render(
                'TuteiBaseBundle:parts:extra_info.html.twig', array(
                'list' => $list,
                'relationList' => $relationList,
                'sourceItems' => $sourceItems
                ), $response
        );
    }

}
