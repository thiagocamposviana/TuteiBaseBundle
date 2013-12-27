<?php
/**
 * File containing the Breadcrumb Component class
 *
 * @author Thiago Campos Viana <thiagocamposviana@gmail.com>
 */

namespace Tutei\BaseBundle\Classes\Components;

use Symfony\Component\HttpFoundation\Response;
use Tutei\BaseBundle\Classes\SearchHelper;

/**
 * Renders page Breadcrumb
 */
class Breadcrumb extends Component
{

    /**
     * {@inheritDoc}
     */
    public function render()
    {

        $path = SearchHelper::getPath($this->parameters['pathString'], $this->controller);
        $response = new Response();

        return $this->controller->render(
                'TuteiBaseBundle:parts:breadcrumb.html.twig', array(
                'location_list' => $path
                ), $response
        );
    }

}
