<?php

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
use Tutei\BaseBundle\Controller\TuteiController;

/**
 * Helpers functions used to search object
 */
class SearchHelper
{

    /**
     * Creates the sort clause according to the location sort field
     * @param \eZ\Publish\API\Repository\Values\Content\Location $location
     * 
     * @return \eZ\Publish\API\Repository\Values\Content\Query\SortClause\LocationDepth|\eZ\Publish\API\Repository\Values\Content\Query\SortClause\SectionIdentifier|\eZ\Publish\API\Repository\Values\Content\Query\SortClause\DateModified|\eZ\Publish\API\Repository\Values\Content\Query\SortClause\LocationPriority|\eZ\Publish\API\Repository\Values\Content\Query\SortClause\ContentName|\eZ\Publish\API\Repository\Values\Content\Query\SortClause\ContentId|\eZ\Publish\API\Repository\Values\Content\Query\SortClause\DatePublished
     */
    public static function createSortClause(Location $location)
    {

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

    /**
     * Filters by content type and content type checkbox attribute
     * @param type $classes
     * 
     * @return \eZ\Publish\API\Repository\Values\Content\Query\Criterion\LogicalOr
     */
    public static function createMenuFilter($classes)
    {
        $filters = array();
        foreach ($classes as $index => $class) {
            $filter = explode('/', $class);

            if (count($filter) > 1) {
                $classes[$index] = $filter[0];

                $filters[] = new Query\Criterion\LogicalOr(array(
                    new ContentTypeIdentifier($class),
                    new Query\Criterion\Field($filter[1], Operator::EQ, true),
                ));
            } else {
                $filters[] = new ContentTypeIdentifier($class);
            }
        }

        return new Query\Criterion\LogicalOr($filters);
    }

    /**
     * Get all content in path given a path string
     * @param string                                        $pathString
     * @param \Tutei\BaseBundle\Controller\TuteiController  $controller
     * 
     * @return array
     */
    public static function getPath($pathString, TuteiController $controller)
    {

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
