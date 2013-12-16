<?php

/**
 * Description of SearchHelper
 *
 * @author Thiago Campos Viana <thiagocamposviana at gmail.com>
 */

namespace Tutei\BaseBundle\Classes;

use eZ\Publish\API\Repository\Values\Content\Location;
use eZ\Publish\API\Repository\Values\Content\Query;
use eZ\Publish\API\Repository\Values\Content\Query\Criterion\ContentTypeIdentifier;
use eZ\Publish\API\Repository\Values\Content\Query\Criterion\Operator;
use eZ\Publish\API\Repository\Values\Content\Query\SortClause\ContentId;
use eZ\Publish\API\Repository\Values\Content\Query\SortClause\ContentName;
use eZ\Publish\API\Repository\Values\Content\Query\SortClause\DateModified;
use eZ\Publish\API\Repository\Values\Content\Query\SortClause\DatePublished;
use eZ\Publish\API\Repository\Values\Content\Query\SortClause\LocationDepth;
use eZ\Publish\API\Repository\Values\Content\Query\SortClause\LocationPriority;
use eZ\Publish\API\Repository\Values\Content\Query\SortClause\SectionIdentifier;


class SearchHelper {
    public static function createSortClause($location) {
        
        $sortOrder = Query::SORT_ASC;
        if ($location->sortOrder == 0) {
            $sortOrder = Query::SORT_DESC;
        }


        switch ($location->sortField) {
            case Location::SORT_FIELD_CONTENTOBJECT_ID:
                return new ContentId($sortOrder);
            case Location::SORT_FIELD_DEPTH:
                return new LocationDepth($sortOrder);
            case Location::SORT_FIELD_MODIFIED:
                return new DateModified($sortOrder);
            case Location::SORT_FIELD_PUBLISHED:
                return new DatePublished($sortOrder);
            case Location::SORT_FIELD_PRIORITY:
                return new LocationPriority($sortOrder);
            case Location::SORT_FIELD_SECTION:
                return new SectionIdentifier($sortOrder);
            default:
                return new ContentName($sortOrder);
        }
    }
    
    public static function createMenuFilter($classes) {
        $filters = array();
        foreach ($classes as $index => $class) {
            $filter = explode('/', $class);

            if (count($filter) > 1) {
                $classes[$index] = $filter[0];

                $filters[] = new Query\Criterion\LogicalOr(array(
                    new ContentTypeIdentifier($class),
                    new Query\Criterion\Field($filter[1], Operator::EQ, true)
                ));
            } else {
                $filters[] = new ContentTypeIdentifier($class);
            }
        }

        return new Query\Criterion\LogicalOr($filters);
    }
    
    public static function getPath($pathString, $controller) {
        
        
        $repository = $controller->getRepository();
        
        $locationService = $repository->getLocationService();
        $locations = explode('/', $pathString);

        $path = array();
        foreach ($locations as $id) {

            if (!in_array($id, array('', '1'))) {
                $path[] = $locationService->loadLocation($id);
            }
        }
        return $path;
    }
}
