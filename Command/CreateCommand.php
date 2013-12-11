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
        
        $xmlText = "<?xml version='1.0' encoding='utf-8'?><section></section>";
                
        $fields = array(
            array('name'=>'description', 'value'=>$xmlText),
            array('name'=>'short_description', 'value'=>$xmlText),
            array('name'=>'name', 'value'=>'Welcome to eZ Publish 5')
        );
        
        //$this->updateContent(2, $fields);
        
        $searchService = $repository->getSearchService();

        $query = new Query();

        $query->criterion = new ContentTypeIdentifier( array( 'block' ) );

        $list = $searchService->findContent($query);
        /*
        $content = array(
            array('name'=>'Harder', 'img'=>str_replace('/web','', getcwd() ) .'/src/Tutei/BaseBundle/SetupFiles/content_files/blossom.png'),
            array('name'=>'Better', 'img'=>str_replace('/web','', getcwd() ) .'/src/Tutei/BaseBundle/SetupFiles/content_files/bubbles.jpg'),
            array('name'=>'Faster', 'img'=>str_replace('/web','', getcwd() ) .'/src/Tutei/BaseBundle/SetupFiles/content_files/buttercup.png')
        );
        
        foreach($list->searchHits as $index=>$location){
            $locationId = (int)$location->valueObject->versionInfo->contentInfo->mainLocationId;
            foreach($content as $item){           
                
                $fields = array(
                    array('name'=>'title', 'value'=>$item['name']),
                    array('name'=>'image', 'value'=>$item['img'])
                );
                
                $this->createContent($locationId, 'block_item', $fields);
            }
        }  
         * 
         */  
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
    
    public function createContent($locationId, $contentType, $fields){
        $repository = $this->getContainer()->get('ezpublish.api.repository');
        $contentTypeService = $repository->getContentTypeService();
        $contentType = $contentTypeService->loadContentTypeByIdentifier($contentType);
        $contentService = $repository->getContentService();
        $contentCreateStruct = $contentService->newContentCreateStruct($contentType, 'eng-GB');

        
        foreach( $fields as $field ){
            $contentCreateStruct->setField( $field['name'], $field['value'] );
        }
        
        
        $locationService = $repository->getLocationService();

        $locationCreateStruct = $locationService->newLocationCreateStruct($locationId);

        $draft = $contentService->createContent($contentCreateStruct, array($locationCreateStruct));
        $content = $contentService->publishVersion($draft->versionInfo);
    }    
    
    public function updateContent($locationId, $fields){
        $repository = $this->getContainer()->get('ezpublish.api.repository');
        $locationService = $repository->getLocationService();
        
        $location = $locationService->loadLocation( $locationId );
        
        $contentService = $repository->getContentService();
        
        $contentInfo = $contentService->loadContentInfo( $location->contentInfo->id );
        $contentDraft = $contentService->createContentDraft( $contentInfo );
        
        
        $contentUpdateStruct = $contentService->newContentUpdateStruct();
        
        foreach( $fields as $field ){
            $contentUpdateStruct->setField( $field['name'], $field['value'] );
        }
        
        $contentDraft = $contentService->updateContent( $contentDraft->versionInfo, $contentUpdateStruct );
        $content = $contentService->publishVersion( $contentDraft->versionInfo );
        
    }
    
    /* TODO: Remove this method, improve createContent */
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
    
    public function updateType(){
        
        $repository = $this->getContainer()->get('ezpublish.api.repository');
        $contentTypeService = $repository->getContentTypeService();
        $contentType = $contentTypeService->loadContentTypeByIdentifier('folder');
        
        
        $contentDraft = $contentTypeService->createContentTypeDraft( $contentType );
        
        
        $contentUpdateStruct = $contentTypeService->newContentTypeUpdateStruct();
        
        $titleFieldCreate = $contentTypeService->newFieldDefinitionCreateStruct(
            'menu3', 'ezboolean'
        );
        $titleFieldCreate->names = array(
            'eng-GB' => 'Menu'
            );
        $titleFieldCreate->isSearchable = true;

        $titleFieldCreate->position = 10;
        $titleFieldCreate->isTranslatable = false;
        $titleFieldCreate->isRequired = true;
        $titleFieldCreate->isInfoCollector = false;
        $titleFieldCreate->fieldSettings = array();
        
        
        $contentTypeService->addFieldDefinition( $contentDraft,  $titleFieldCreate );
        
        
        $content = $contentTypeService->publishContentTypeDraft( $contentDraft );
        //        $contentDraft = $contentTypeService->updateContentTypeDraft( $contentDraft, $contentUpdateStruct );
   
    }

}