<?php
/**
 * File containing the Title Component class
 *
 * @author Thiago Campos Viana <thiagocamposviana@gmail.com>
 */

namespace Tutei\BaseBundle\Classes\Components;

use Symfony\Component\HttpFoundation\Response;
use Tutei\BaseBundle\Classes\SearchHelper;

/**
 * Renders page Title
 */
class Title extends Component
{

    /**
     * {@inheritDoc}
     */
    public function render()
    {
        $pathString = $this->parameters['pathString'];
        $path = array_reverse(SearchHelper::getPath($pathString, $this->controller));
        $title = '';

        $numItems = count($path);
        $count = 0;
        foreach ($path as $value) {

            $title .= $value->contentInfo->name;
            if (++$count !== $numItems) {
                $title .= ' / ';
            }
        }

        return new Response($title);
    }

}
