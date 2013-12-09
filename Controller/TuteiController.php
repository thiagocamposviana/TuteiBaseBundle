<?php

namespace Tutei\BaseBundle\Controller;

use eZ\Publish\API\Repository\Values\Content\Query;
use eZ\Publish\API\Repository\Values\Content\Query\Criterion\ContentTypeIdentifier;
use eZ\Publish\API\Repository\Values\Content\Query\Criterion\LogicalAnd;
use eZ\Publish\API\Repository\Values\Content\Query\Criterion\ParentLocationId;
use eZ\Publish\API\Repository\Values\Content\Query\Criterion\FullText;
use eZ\Publish\API\Repository\Values\Content\Query\Criterion\Subtree;
use eZ\Publish\API\Repository\Values\Content\Query\Criterion\LocationPriority;
use eZ\Publish\API\Repository\Values\Content\Query\SortClause;
use eZ\Publish\API\Repository\Values\Content\Query\Criterion\Operator;
use eZ\Publish\Core\MVC\Symfony\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;

class TuteiController extends Controller {

    public function lineList($location) {

        // TODO: Find a better way to fetch children
        //$repository = $this->getRepository();
        //$contentTypeService = $repository->getContentTypeService();
        //$contentType = $contentTypeService->loadContentType($location->contentInfo->contentTypeId);

        $classes = $this->container->getParameter('tutei.folder.content_types_include');
        $sortType = $this->container->getParameter('tutei.folder.sort_type');
        $sortOrder = $this->container->getParameter('tutei.folder.sort_order');

        $searchService = $this->getRepository()->getSearchService();

        $query = new Query();

        $query->criterion = new LogicalAnd(
                array(
            new ContentTypeIdentifier($classes),
            new ParentLocationId(array($location->id))
                )
        );

        $query->sortClauses = array(
            $this->getSortClause($sortType, $sortOrder)
        );
        // TODO: Limit search
        // $query->limit = 20;
        // $query->offset = 0;

        $list = $searchService->findContent($query);

        $response = new Response();
        return $this->render(
                        'TuteiBaseBundle:parts:line_list.html.twig', array(
                    'list' => $list
                        ), $response
        );
    }

    public function showTopMenu() {
        $classes = $this->container->getParameter('tutei.top_menu.content_types_include');

        $searchService = $this->getRepository()->getSearchService();

        $query = new Query();

        $query->criterion = new LogicalAnd(
                array(
            new ContentTypeIdentifier($classes),
            new ParentLocationId(array(2)),
            new LocationPriority(Operator::LT, 100)
                )
        );
        $query->sortClauses = array(
            new SortClause\LocationPriority(Query::SORT_ASC)
        );
        $list = $searchService->findContent($query);

        $response = new Response();
        return $this->render(
                        'TuteiBaseBundle:parts:top_menu.html.twig', array(
                    'list' => $list
                        ), $response
        );
    }

    public function showUserMenu() {

        /* TODO: Create menu filter settings and code */
        $classes = $this->container->getParameter('tutei.top_menu.content_types_include');

        $searchService = $this->getRepository()->getSearchService();

        $query = new Query();

        $query->criterion = new LogicalAnd(
                array(
            new ContentTypeIdentifier($classes),
            new ParentLocationId(array(2)),
            new LocationPriority(Operator::GTE, 100)
                )
        );

        $query->sortClauses = array(
            new SortClause\LocationPriority(Query::SORT_ASC)
        );

        $list = $searchService->findContent($query);


        $current_user = $this->getRepository()->getCurrentUser();

        $response = new Response();
        return $this->render(
                        'TuteiBaseBundle:parts:user_menu.html.twig', array(
                    'list' => $list,
                    'current_user' => $current_user
                        ), $response
        );
    }

    public function getSortClause($name, $order) {

        if ($order == 'asc')
            $order = Query::SORT_ASC;
        else
            $order = Query::SORT_DESC;

        switch ($name) {
            case 'name':
                return new SortClause\ContentName($order);
        }
    }

    public function searchAction() {

        $request = Request::createFromGlobals();

        if ($request->getMethod() == "GET" and $request->query->has('search_text')) {

            $text = $request->query->get('search_text');

            $query = new Query();

            $query->criterion = new LogicalAnd(
                    array(
                new FullText($text)
                    )
            );
            // TODO: Limit search

            $searchService = $this->getRepository()->getSearchService();
            $list = $searchService->findContent($query);


            $response = new Response();
            return $this->render(
                            'TuteiBaseBundle:action:search.html.twig', array('list' => $list, 'noLayout' => false), $response
            );
        } else {
            $response = new Response();
            return $this->render(
                            'TuteiBaseBundle:action:search.html.twig', array('list' => array(), 'noLayout' => false), $response
            );
        }
    }

    public function getTitle($pathString) {
        $path = $this->getPath($pathString);
        $path = array_reverse($path);
        $title = '';

        $numItems = count($path);
        $i = 0;
        foreach ($path as $key => $value) {

            $title .= $value->contentInfo->name;
            if (++$i !== $numItems) {
                $title .= ' / ';
            }
        }

        return new Response($title);
    }

    public function getPath($pathString) {
        $repository = $this->getRepository();
        $locationService = $repository->getLocationService();
        $locations = explode('/', $pathString);

        $path = array();
        foreach ($locations as $id) {

            if (!in_array($id, array('', '1'))) {
                $path[] = $locationService->loadLocation($id);
            }
        }
        return $path;
        //$location = $this->locationService->loadLocation( $locationId );
    }

    public function showBreadcrumb($pathString) {
        $path = $this->getPath($pathString);
        $response = new Response();

        return $this->render(
                        'TuteiBaseBundle:parts:breadcrumb.html.twig', array('locationList' => $path), $response
        );
    }

    public function showSideMenu($pathString) {
        $locations = explode('/', $pathString);
        $locationId = $locations[3];

        $classes = $this->container->getParameter('tutei.top_menu.content_types_include');

        $searchService = $this->getRepository()->getSearchService();

        $query = new Query();

        $query->criterion = new LogicalAnd(
                array(
            new ContentTypeIdentifier($classes),
            new ParentLocationId(array($locationId))
                )
        );
        $query->sortClauses = array(
            new SortClause\LocationPriority(Query::SORT_ASC)
        );
        $list = $searchService->findContent($query);
        //$locationList = array();
        //foreach ( $list->searchHits as $content )
        //{
        //    $locationList[$content->valueObject->versionInfo->contentInfo->mainLocationId] = $this->getRepository()->getLocationService()->loadLocation( $content->valueObject->contentInfo->mainLocationId );
        //}

        $response = new Response();
        return $this->render(
                        'TuteiBaseBundle:parts:side_menu.html.twig', array('list' => $list), $response
        );
    }

}
