<?php

namespace Tutei\BaseBundle\Classes\Components;

use Symfony\Component\HttpFoundation\Response;
use Tutei\BaseBundle\Classes\SearchHelper;

/**
 * Description of Title
 *
 * @author Thiago Campos Viana <thiagocamposviana at gmail.com>
 */
class Title extends Component {    
    
    public function render(){
        $pathString = $this->parameters['pathString'];
        $path = array_reverse(SearchHelper::getPath($pathString, $this->controller));
        $title = '';

        $numItems = count($path);
        $i = 0;
        foreach ($path as $value) {

            $title .= $value->contentInfo->name;
            if (++$i !== $numItems) {
                $title .= ' / ';
            }
        }

        return new Response($title);
    }
}
