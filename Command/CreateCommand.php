<?php

/**
 * Description of ContentCommand
 *
 * @author Thiago Campos Viana <thiagocamposviana at gmail.com>
 */

namespace Tutei\BaseBundle\Command;

use eZ\Publish\API\Repository\Values\Content\Query;
use eZ\Publish\API\Repository\Values\Content\Query\Criterion\ContentTypeIdentifier;
use eZ\Publish\API\Repository\Values\Content\Query\Criterion\LogicalAnd;
use eZ\Publish\Core\FieldType\User\Value;
use Symfony\Bundle\FrameworkBundle\Command\ContainerAwareCommand;
use Symfony\Component\Console\Input\InputArgument;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;

class CreateCommand extends ContainerAwareCommand {

    /**
     * Configures the command
     */
    protected function configure() {
        $this->setName('tutei:create');
        $this->setDefinition(
                array(
                    new InputArgument('name', InputArgument::OPTIONAL, 'An argument')
                )
        );
    }

    /**
     * Executes the command
     * @param InputInterface $input
     * @param OutputInterface $output
     */
    protected function execute(InputInterface $input, OutputInterface $output) {
        // fetch the input argument
        if (!$name = $input->getArgument('name')) {
            $name = "World";
        }
        $repository = $this->getContainer()->get('ezpublish.api.repository');

        $userService = $repository->getUserService();
        $user = $userService->loadUserByCredentials( 'admin', 'publish');
        $repository->setCurrentUser( $user );

        $contentService = $repository->getContentService();
        $locationService = $repository->getLocationService();
        $contentTypeService = $repository->getContentTypeService();
        //var_dump($repository);
        
        $searchService = $repository->getSearchService();

        $query = new Query();

        $query->criterion = new ContentTypeIdentifier( array( 'block' ) );
        
        

        // array( new SortClause\ContentId() )


        $list = $searchService->findContent($query);
        
        $content = array(
            array('name'=>'Harder', 'img'=>getcwd() .'/src/Tutei/BaseBundle/SetupFiles/content_files/blossom.png'),
            array('name'=>'Better', 'img'=>getcwd() .'/src/Tutei/BaseBundle/SetupFiles/content_files/bubbles.jpg'),
            array('name'=>'Faster', 'img'=>getcwd() .'/src/Tutei/BaseBundle/SetupFiles/content_files/buttercup.png')
        );
        
        foreach($list->searchHits as $index=>$location){
            foreach($content as $item){
            
                $locationId = (int)$location->valueObject->versionInfo->contentInfo->mainLocationId;
                $this->createBlockItem($locationId, $item['name'], $item['img']);
            }
        }        
    }
    
    public function createBlockItem($locationId, $name, $imgPath){
        $repository = $this->getContainer()->get('ezpublish.api.repository');
        $contentTypeService = $repository->getContentTypeService();
        $contentType = $contentTypeService->loadContentTypeByIdentifier('block_item');
        $contentService = $repository->getContentService();
        $contentCreateStruct = $contentService->newContentCreateStruct($contentType, 'eng-GB');
        $pathinfo=pathinfo($imgPath);

        $value = new \eZ\Publish\Core\FieldType\Image\Value(
            array(
                'path' => $imgPath,
                'fileSize' => filesize( $imgPath ),
                'fileName' => basename( $pathinfo['basename'] ),
                'alternativeText' => 'block_item'
            ));
        $contentCreateStruct->setField('title', $name);
        
        $contentCreateStruct->setField('image', $value);
        
        
        $locationService = $repository->getLocationService();

        $locationCreateStruct = $locationService->newLocationCreateStruct($locationId);

        $draft = $contentService->createContent($contentCreateStruct, array($locationCreateStruct));
        $content = $contentService->publishVersion($draft->versionInfo);
        
    }

}