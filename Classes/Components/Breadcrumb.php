<?php

namespace Tutei\BaseBundle\Classes\Components;

use Symfony\Component\HttpFoundation\Response;
use Tutei\BaseBundle\Classes\SearchHelper;

/**
 * Renders page Breadcrumb
 *
 * @author Thiago Campos Viana <thiagocamposviana@gmail.com>
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
                'locationList' => $path
                ), $response
        );
    }

}
