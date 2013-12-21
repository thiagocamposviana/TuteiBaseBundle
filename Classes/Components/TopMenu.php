<?php

/**
 * File containing the TopMenu Component class
 *
 * @author Thiago Campos Viana <thiagocamposviana@gmail.com>
 */

namespace Tutei\BaseBundle\Classes\Components;

use eZ\Publish\API\Repository\Values\Content\Query\Criterion\Operator;
use eZ\Publish\API\Repository\Values\Content\Query\Criterion\LocationPriority;
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

        $filters = array(
            SearchHelper::createMenuFilter($classes),
            new LocationPriority(Operator::LT, 100),
        );

        $list = SearchHelper::fetchChildren($this->controller, 2, $filters);

        $pathString = '';
        if (isset($this->parameters['pathString'])) {
            $pathString = $this->parameters['pathString'];
        }

        $locations = explode('/', $pathString);

        $locationChildren = array();

        if($this->controller->getContainer()->getParameter('project.topmenu.dropdown')) {
            foreach ($list->searchHits as $item) {
                $locationdId = $item->valueObject->versionInfo->contentInfo->mainLocationId;
                $searchResult = SearchHelper::fetchChildren($this->controller, $locationdId, $filters);

                if ($searchResult->totalCount > 0) {
                    $locationChildren[$locationdId] = $searchResult;
                }
            }
        }


        return $this->controller->render(
                'TuteiBaseBundle:parts:top_menu.html.twig', array(
                'list' => $list,
                'locations' => $locations,
                'locationChildren' => $locationChildren,
                ), $response
        );
    }

}
