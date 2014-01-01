<?php

namespace Tutei\BaseBundle\Controller;

use eZ\Publish\Core\MVC\Symfony\Controller\Controller;
use Symfony\Component\HttpFoundation\Response;
use Tutei\BaseBundle\Classes\Components\Search;

class TuteiController extends Controller
{

    /**
     * Renders in a given component
     * 
     * @param string $name
     * @param array $parameters
     * @param string $nameSpace
     * 
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function showComponent($name, $parameters = array(), $nameSpace = "Tutei\BaseBundle\Classes\Components")
    {
        $class = $nameSpace . "\\" . $name;

        if (class_exists($class)) {

            $component = new $class($this, $parameters);

            if (is_subclass_of($component, "Tutei\\BaseBundle\\Classes\\Components\\Component")) {
                return $component->render();
            }
        }

        return new Response("<h1>Error: Component not found</h1>");
    }

    /**
     * Shows the search results
     * 
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function searchAction()
    {
        $search = new Search($this);
        return $search->render();
    }

    /**
     * Gets the controller's container
     * 
     * @return \Symfony\Component\DependencyInjection\Container
     */
    public function getContainer()
    {
        return $this->container;
    }

}
