<?php

namespace Tutei\BaseBundle\Classes\Components;

use Tutei\BaseBundle\Controller\TuteiController;

/**
 * The page component abstract class
 *
 * @author Thiago Campos Viana <thiagocamposviana@gmail.com>
 */
abstract class Component
{

    /**
     * The current controller
     * @var \Tutei\BaseBundle\Controller\TuteiController 
     */
    protected $controller;
    /**
     * A hash array containing all the parameters to be used by the component
     * @var array 
     */
    protected $parameters;

    /** 
     * @param \Tutei\BaseBundle\Controller\TuteiController  $controller
     * @param array                                         $parameters
     */
    public function __construct(TuteiController $controller, $parameters = array())
    {
        $this->controller = $controller;
        $this->parameters = $parameters;
    }

    /**
     * Renders the component
     */
    public function render()
    {        
    }

}
