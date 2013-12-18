<?php

namespace Tutei\BaseBundle\Classes\Components;

use eZ\Publish\API\Repository\Values\Content\Query;
use eZ\Publish\API\Repository\Values\Content\Query\Criterion\ContentTypeIdentifier;
use eZ\Publish\API\Repository\Values\Content\Query\Criterion\LogicalAnd;
use eZ\Publish\API\Repository\Values\Content\Query\Criterion\ParentLocationId;
use eZ\Publish\Core\Pagination\Pagerfanta\ContentSearchAdapter;
use Pagerfanta\Pagerfanta;
use Symfony\Component\HttpFoundation\Response;
use Tutei\BaseBundle\Classes\SearchHelper;

/**
 * Description of LineList
 *
 * @author Thiago Campos Viana <thiagocamposviana at gmail.com>
 */
class LineList extends Component {
    public function render(){
        $response = new Response();

        $response->setPublic();
        $response->setSharedMaxAge(86400);
        
        $location = $this->parameters['location'];
        $request = $this->parameters['request'];
        
        // Menu will expire when top location cache expires.
        $response->headers->set('X-Location-Id', $location->id);
        // Menu might vary depending on user permissions, so make the cache vary on the user hash.
        $response->setVary('X-User-Hash');


        $contentTypeService = $this->controller->getRepository()->getContentTypeService();
        $contentType = $contentTypeService->loadContentType($location->contentInfo->contentTypeId);
        if($this->controller->getContainer()->hasParameter('project.list.' . $contentType->identifier)){
            $classes = $this->controller->getContainer()->getParameter('project.list.' . $contentType->identifier);
        } else {
            return $response->setContent('');
        }
        $query = new Query();

        $query->criterion = new LogicalAnd(
                array(
            new ContentTypeIdentifier($classes),
            new ParentLocationId(array($location->id))
                )
        );

        $query->sortClauses = array(
            SearchHelper::createSortClause($location)
        );

        // Initialize pagination.
        $pager = new Pagerfanta(
                new ContentSearchAdapter($query, $this->controller->getRepository()->getSearchService())
        );
        
        $limit = isset($this->parameters['limit'])?$this->parameters['limit']:$this->controller->getContainer()->getParameter('project.line_list.limit');

        $pager->setMaxPerPage($limit);
        $pager->setCurrentPage($request->get('page', 1));

        // $list = $searchService->findContent($query);
        $content = $this->controller->getRepository()
                ->getContentService()
                ->loadContentByContentInfo($location->getContentInfo());

        $template = isset($this->parameters['template'])?$this->parameters['template']:'TuteiBaseBundle:parts:line_list.html.twig';
        return $this->controller->render(
                        $template, array(
                    'location' => $location,
                    'content' => $content,
                    'pager' => $pager
                        ), $response
        );
        
        
    }
}
