<?php

/**
 * LocaleListener class
 *
 * @author Thiago Campos Viana <thiagocamposviana@gmail.com>
 */


namespace Tutei\BaseBundle\Classes\EventListener;

use Symfony\Component\HttpKernel\Event\GetResponseEvent;

class LocaleListener{

    protected $container;
   
    public function setContainer($container){
        $this->container = $container;        
    }
 

    public function onKernelRequest( GetResponseEvent $event )
    {
        $siteaccess = $this->container->get('ezpublish.siteaccess')->name;
        $twigGlobals = $this->container->get('twig')->getGlobals();
        $locale = $twigGlobals['siteaccess'][$siteaccess]['locale'];
        $this->container->get('request')->setLocale($locale);        
    }
    
    static public function getSubscribedEvents()
    {
        return array(
            // must be registered before the default Locale listener
            KernelEvents::REQUEST => array(array('onKernelRequest', 17)),
        );
    }
}