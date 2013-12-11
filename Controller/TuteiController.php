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
use eZ\Publish\SPI\Persistence\Content\Location;

class TuteiController extends Controller {
    
    public function createSortClause($location){
        
        $sortOrder = Query::SORT_ASC;
        if( $location->sortOrder == 0 ){
            $sortOrder = Query::SORT_DESC;
        }
        
        
        switch($location->sortField){
            case Location::SORT_FIELD_CONTENTOBJECT_ID:
                return new SortClause\ContentId($sortOrder);
            case Location::SORT_FIELD_DEPTH:
                return new SortClause\LocationDepth($sortOrder);
            case Location::SORT_FIELD_MODIFIED:
                return new SortClause\DateModified($sortOrder);
            case Location::SORT_FIELD_PUBLISHED:
                return new SortClause\DatePublished($sortOrder);
            case Location::SORT_FIELD_PRIORITY:
                return new SortClause\LocationPriority($sortOrder);
            case Location::SORT_FIELD_SECTION:
                return new SortClause\SectionIdentifier($sortOrder);
            default:
                return new SortClause\ContentName($sortOrder);
                            
        }
                
    }

    public function lineList($location) {
        $response = new Response();
        
        $response->setPublic();
        $response->setSharedMaxAge( 86400 );
        
        // Menu will expire when top location cache expires.
        $response->headers->set( 'X-Location-Id', $location->id );
        // Menu might vary depending on user permissions, so make the cache vary on the user hash.
        $response->setVary( 'X-User-Hash' );
        
        $classes = $this->container->getParameter('project.list.folder');
        
        $searchService = $this->getRepository()->getSearchService();

        $query = new Query();

        $query->criterion = new LogicalAnd(
                array(
            new ContentTypeIdentifier($classes),
            new ParentLocationId(array($location->id))
                )
        );

        $query->sortClauses = array(
            $this->createSortClause($location)
        );
        // TODO: Limit search
        // $query->limit = 20;
        // $query->offset = 0;

        $list = $searchService->findContent($query);

        
        return $this->render(
                        'TuteiBaseBundle:parts:line_list.html.twig', array(
                    'list' => $list
                        ), $response
        );
    }
    
    public function createMenuFilter($classes){
        $filters = array();
        foreach($classes as $index=>$class) {
            $filter = explode('/', $class);
            
            if(count( $filter ) > 1){
                $classes[$index]=$filter[0];

                $filters[]=new Query\Criterion\LogicalOr( array(
                            new ContentTypeIdentifier($class),
                            new Query\Criterion\Field($filter[1], Operator::EQ, true)                     
                            
                        ));
    
            } else {
                $filters[]=new ContentTypeIdentifier($class);
            }
        }
        
        return new Query\Criterion\LogicalOr($filters);
        
    }

    public function showTopMenu() {
        
        $response = new Response();
        
        $response->setPublic();
        $response->setSharedMaxAge( 86400 );
        
        // Menu will expire when top location cache expires.
        $response->headers->set( 'X-Location-Id', 2 );
        // Menu might vary depending on user permissions, so make the cache vary on the user hash.
        $response->setVary( 'X-User-Hash' );
        
        $classes = $this->container->getParameter('project.menufilter.top');        
        
        $filters = $this->createMenuFilter($classes);

        $searchService = $this->getRepository()->getSearchService();

        $query = new Query();

        $query->criterion = new LogicalAnd(
                array(
            $filters,
            new ParentLocationId(array(2)),
            new LocationPriority(Operator::LT, 100)
                )
        );
        $query->sortClauses = array(
            new SortClause\LocationPriority(Query::SORT_ASC)
        );
        $list = $searchService->findContent($query);

        
        return $this->render(
                        'TuteiBaseBundle:parts:top_menu.html.twig', array(
                    'list' => $list
                        ), $response
        );
    }

    public function showUserMenu() {
        
        $response = new Response();
        
        $response->setSharedMaxAge( 3600 );
        $response->setVary( 'Cookie' );

        $classes = $this->container->getParameter('project.menufilter.top');        
        
        $filters = $this->createMenuFilter($classes);

        $searchService = $this->getRepository()->getSearchService();

        $query = new Query();

        $query->criterion = new LogicalAnd(
                array(
            $filters,
            new ParentLocationId(array(2)),
            new LocationPriority(Operator::GTE, 100)
                )
        );

        $query->sortClauses = array(
            new SortClause\LocationPriority(Query::SORT_ASC)
        );

        $list = $searchService->findContent($query);


        $current_user = $this->getRepository()->getCurrentUser();

        
        return $this->render(
                        'TuteiBaseBundle:parts:user_menu.html.twig', array(
                    'list' => $list,
                    'current_user' => $current_user
                        ), $response
        );
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
        $path = array_reverse($this->getPath($pathString));
        $title = '';

        $numItems = count($path);
        $i = 0;
        foreach ($path as $value) {

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
        
    }

    public function showBreadcrumb($pathString) {
        $path = $this->getPath($pathString);
        $response = new Response();

        return $this->render(
                        'TuteiBaseBundle:parts:breadcrumb.html.twig', array('locationList' => $path), $response
        );
    }

    public function showSideMenu($pathString) {
        
        $response = new Response();
        
        $response->setPublic();
        $response->setSharedMaxAge( 86400 );

        
        
        $locations = explode('/', $pathString);
        $locationId = $locations[3];
        
        // Menu will expire when top location cache expires.
        $response->headers->set( 'X-Location-Id', $locationId );
        // Menu might vary depending on user permissions, so make the cache vary on the user hash.
        $response->setVary( 'X-User-Hash' );
        
        $classes = $this->container->getParameter('project.menufilter.side');        
        
        $filters = $this->createMenuFilter($classes);

        $searchService = $this->getRepository()->getSearchService();

        $query = new Query();

        $query->criterion = new LogicalAnd(
                array(
            $filters,
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

        
        return $this->render(
                        'TuteiBaseBundle:parts:side_menu.html.twig', array('list' => $list), $response
        );
    }

    public function showExtraInfo($pathString) {

        if ($pathString == '/1/') {
            return new Response();
        }
        $locations = explode('/', $pathString);

        $locationId = $locations[count($locations) - 2];

        $searchService = $this->getRepository()->getSearchService();

        $query = new Query();

        $query->criterion = new LogicalAnd(
                array(
            new ContentTypeIdentifier(array('infobox')),
            new ParentLocationId(array($locationId))
                )
        );
        
        $repository = $this->getRepository();
        $locationService = $repository->getLocationService();
        $location = $locationService->loadLocation( $locationId );
        
        $query->sortClauses = array(
            $this->createSortClause($location)
        );

        $list = $searchService->findContent($query);

        if ($list->totalCount == 0) {
            return $this->showExtraInfo(str_replace("/$locationId/", "/", $pathString));
        }
        //$locationList = array();
        //foreach ( $list->searchHits as $content )
        //{
        //    $locationList[$content->valueObject->versionInfo->contentInfo->mainLocationId] = $this->getRepository()->getLocationService()->loadLocation( $content->valueObject->contentInfo->mainLocationId );
        //}

        $response = new Response();
        return $this->render(
                        'TuteiBaseBundle:parts:extra_info.html.twig', array('list' => $list), $response
        );
    }

    public function showBlocks($pathString) {

        $locations = explode('/', $pathString);

        $locationId = $locations[count($locations) - 2];

        $searchService = $this->getRepository()->getSearchService();

        $query = new Query();

        $query->criterion = new LogicalAnd(
                array(
            new ContentTypeIdentifier(array('block')),
            new ParentLocationId(array($locationId))
                )
        );
        
        $repository = $this->getRepository();
        $locationService = $repository->getLocationService();
        $location = $locationService->loadLocation( $locationId );
        
        $query->sortClauses = array(
            $this->createSortClause($location)
        );
        $list = $searchService->findContent($query);

        //var_dump($list->searchHits);

        $blocks = array();

        foreach ($list->searchHits as $block) {
            $parentId = $block->valueObject->versionInfo->contentInfo->mainLocationId;
            $query = new Query();

            $query->criterion = new LogicalAnd(
                    array(
                new ParentLocationId(array($parentId))
                    )
            );
            $query->sortClauses = array(
                new SortClause\LocationPriority(Query::SORT_ASC)
            );
            $blocks[] = $searchService->findContent($query);
        }

        $response = new Response();
        
        $response->setPublic();
        $response->setSharedMaxAge( 86400 );
        
        // Menu will expire when top location cache expires.
        $response->headers->set( 'X-Location-Id', $locationId );
        
        return $this->render(
                        'TuteiBaseBundle:parts:page_blocks.html.twig', array('blocks' => $blocks), $response
        );
    }

}
