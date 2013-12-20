<?php

namespace Tutei\BaseBundle\Controller;

use eZ\Publish\Core\MVC\Symfony\Controller\Controller;
use Symfony\Component\HttpFoundation\Response;
use Tutei\BaseBundle\Classes\Components\Search;

class TuteiController extends Controller
{

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

    public function searchAction()
    {
        $search = new Search($this);
        return $search->render();
    }

    public function getContainer()
    {
        return $this->container;
    }

    public function getLanguage()
    {
        $siteaccess = $this->container->get('ezpublish.siteaccess')->name;
        $twigGlobals = $this->container->get('twig')->getGlobals();
        return $twigGlobals['siteaccess'][$siteaccess]['language'];
    }

}
