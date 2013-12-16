<?php

namespace Tutei\BaseBundle\Classes\Components;

use Symfony\Component\HttpFoundation\Response;
use Tutei\BaseBundle\Classes\SearchHelper;

/**
 * Description of Breadcrumb
 *
 * @author Thiago Campos Viana <thiagocamposviana at gmail.com>
 */
class Breadcrumb extends Component {
    
    public function render(){
        
        $path = SearchHelper::getPath($this->parameters['pathString'], $this->controller);
        $response = new Response();

        return $this->controller->render(
                        'TuteiBaseBundle:parts:breadcrumb.html.twig', array('locationList' => $path), $response
        );
        
    }
}
