<?php
/**
 * File containing the TopMenu Component class
 *
 * @author Thiago Campos Viana <thiagocamposviana@gmail.com>
 */

namespace Tutei\BaseBundle\Classes\Components;

use eZ\Publish\API\Repository\Values\Content\Query;
use eZ\Publish\API\Repository\Values\Content\Query\Criterion\LocationPriority as LocationPriority2;
use eZ\Publish\API\Repository\Values\Content\Query\Criterion\LogicalAnd;
use eZ\Publish\API\Repository\Values\Content\Query\Criterion\Operator;
use eZ\Publish\API\Repository\Values\Content\Query\Criterion\ParentLocationId;
use eZ\Publish\API\Repository\Values\Content\Query\SortClause\LocationPriority;
use Symfony\Component\HttpFoundation\Response;
use Tutei\BaseBundle\Classes\SearchHelper;

/**
 * Renders page TopMenu
 */
class TopMenu extends Component
{

    /**
     * {@inheritDoc}
     */
    public function render()
    {

        $response = new Response();

        $response->setPublic();
        $response->setSharedMaxAge(86400);

        // Menu will expire when top location cache expires.
        $response->headers->set('X-Location-Id', 2);
        // Menu might vary depending on user permissions, so make the cache vary on the user hash.
        $response->setVary('X-User-Hash');

        $classes = $this->controller->getContainer()->getParameter('project.menufilter.top');

        $filters = SearchHelper::createMenuFilter($classes);

        $searchService = $this->controller->getRepository()->getSearchService();

        $query = new Query();

        $query->criterion = new LogicalAnd(
            array(
            $filters,
            new ParentLocationId(array(2)),
            new LocationPriority2(Operator::LT, 100)
            )
        );
        $query->sortClauses = array(
            new LocationPriority(Query::SORT_ASC)
        );
        $list = $searchService->findContent($query);
        
        $pathString = '';
        if(isset($this->parameters['pathString']))
        {
            $pathString = $this->parameters['pathString'];
        }

        $locations = explode('/', $pathString);


        return $this->controller->render(
                'TuteiBaseBundle:parts:top_menu.html.twig', array(
                'list' => $list, 'locations' => $locations
                ), $response
        );
    }

}
