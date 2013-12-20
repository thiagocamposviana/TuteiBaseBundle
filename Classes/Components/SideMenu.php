<?php

namespace Tutei\BaseBundle\Classes\Components;

use eZ\Publish\API\Repository\Values\Content\Query;
use eZ\Publish\API\Repository\Values\Content\Query\Criterion\LogicalAnd;
use eZ\Publish\API\Repository\Values\Content\Query\Criterion\ParentLocationId;
use eZ\Publish\API\Repository\Values\Content\Query\SortClause\LocationPriority;
use Symfony\Component\HttpFoundation\Response;
use Tutei\BaseBundle\Classes\SearchHelper;

/**
 * Renders page SideMenu
 *
 * @author Thiago Campos Viana <thiagocamposviana@gmail.com>
 */
class SideMenu extends Component
{

    /**
     * {@inheritDoc}
     */
    public function render()
    {
        $response = new Response();

        $response->setPublic();
        $response->setSharedMaxAge(86400);



        $locations = explode('/', $this->parameters['pathString']);
        $locationId = $locations[3];

        // Menu will expire when top location cache expires.
        $response->headers->set('X-Location-Id', $locationId);
        // Menu might vary depending on user permissions, so make the cache vary on the user hash.
        $response->setVary('X-User-Hash');

        $classes = $this->controller->getContainer()->getParameter('project.menufilter.side');

        $filters = SearchHelper::createMenuFilter($classes);

        $searchService = $this->controller->getRepository()->getSearchService();

        $query = new Query();

        $query->criterion = new LogicalAnd(
            array(
            $filters,
            new ParentLocationId(array($locationId))
            )
        );
        $query->sortClauses = array(
            new LocationPriority(Query::SORT_ASC)
        );
        $list = $searchService->findContent($query);


        return $this->controller->render(
                'TuteiBaseBundle:parts:side_menu.html.twig', array(
                'list' => $list,
                'locations' => $locations
                ), $response
        );
    }

}
