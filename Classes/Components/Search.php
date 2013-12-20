<?php
/**
 * File containing the Search Component class
 *
 * @author Thiago Campos Viana <thiagocamposviana@gmail.com>
 */

namespace Tutei\BaseBundle\Classes\Components;

use eZ\Publish\API\Repository\Values\Content\Query;
use eZ\Publish\API\Repository\Values\Content\Query\Criterion\FullText;
use eZ\Publish\API\Repository\Values\Content\Query\Criterion\LogicalAnd;
use eZ\Publish\Core\Pagination\Pagerfanta\ContentSearchAdapter;
use Pagerfanta\Pagerfanta;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;

/**
 * Renders Search results
 */
class Search extends Component
{

    /**
     * {@inheritDoc}
     */
    public function render()
    {

        $request = Request::createFromGlobals();

        if ($request->getMethod() == "GET" and $request->query->has('search_text')) {

            $text = $request->query->get('search_text');

            $query = new Query();

            $query->criterion = new LogicalAnd(
                array(
                new FullText($text)
                )
            );

            // Initialize pagination.
            $pager = new Pagerfanta(
                new ContentSearchAdapter($query, $this->controller->getRepository()->getSearchService())
            );

            $pager->setMaxPerPage($this->controller->getContainer()->getParameter('project.line_list.limit'));
            $pager->setCurrentPage($request->get('page', 1));


            $response = new Response();
            return $this->controller->render(
                    'TuteiBaseBundle:action:search.html.twig', array('pager' => $pager, 'noLayout' => false), $response
            );
        } else {
            $response = new Response();
            return $this->controller->render(
                    'TuteiBaseBundle:action:search.html.twig', array(
                    'list' => array(),
                    'noLayout' => false
                    ), $response
            );
        }
    }

}
