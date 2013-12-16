<?php

/**
 * Description of PageComponent
 *
 * @author Thiago Campos Viana <thiagocamposviana at gmail.com>
 */

namespace Tutei\BaseBundle\Classes\Components;

use Tutei\BaseBundle\Controller\TuteiController;

abstract class Component {
    
    protected $controller;
    protected $parameters;
    
    public function __construct( TuteiController $controller, $parameters = array() ){
        $this->controller = $controller;
        $this->parameters = $parameters;
        
    }
    
    public function render(){     
        
    }
    
    
}
