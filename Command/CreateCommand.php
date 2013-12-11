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
        
        /* $xmlText = "<?xml version='1.0' encoding='utf-8'?><section></section>"; */
        
        $fieldsInfo = array( 

            array('name'=>'title', 'value'=>'Infobox')
        );
        
        $created = $this->createContent(2, 'infobox', $fieldsInfo);

        $fields = array( 

            array('name'=>'name', 'value'=>'Folders')
        );
        
        $created = $this->createContent(2, 'folder', $fields);
        
        //var_dump($created->versionInfo->contentInfo->mainLocationId);exit;
        
        $created = $this->createContent($created->versionInfo->contentInfo->mainLocationId,
                                    'folder', $fields);
        $created = $this->createContent($created->versionInfo->contentInfo->mainLocationId,
                                    'folder', $fields);
        $created = $this->createContent($created->versionInfo->contentInfo->mainLocationId,
                                    'folder', $fields);
        
        $fieldsInfo = array( 

            array('name'=>'title', 'value'=>'Changed Infobox')
        );
        
        $created = $this->createContent($created->versionInfo->contentInfo->mainLocationId,
                                    'infobox', $fieldsInfo);
        
        $fields = array( 

            array('name'=>'title', 'value'=>'Block')
        );
        
        $created = $this->createContent(2, 'block', $fields);
 
        $content = array(
            array('name'=>'Harder', 'img'=>str_replace('/web','', getcwd() ) .'/src/Tutei/BaseBundle/SetupFiles/content_files/blossom.png'),
            array('name'=>'Better', 'img'=>str_replace('/web','', getcwd() ) .'/src/Tutei/BaseBundle/SetupFiles/content_files/bubbles.jpg'),
            array('name'=>'Faster', 'img'=>str_replace('/web','', getcwd() ) .'/src/Tutei/BaseBundle/SetupFiles/content_files/buttercup.png')
        );
        
        $locationId = (int)$created->versionInfo->contentInfo->mainLocationId;
        foreach($content as $item){           

            $fields = array(
                array('name'=>'title', 'value'=>$item['name']),
                array('name'=>'image', 'value'=>$item['img'])
            );

            $this->createContent($locationId, 'block_item', $fields);
        }
        
        
        $fields = array( 

            array('name'=>'name', 'value'=>'Articles')
        );
        
        $created = $this->createContent(2, 'folder', $fields);
        
        $xmlText = "<?xml version='1.0' encoding='utf-8'?><section><paragraph>Article intro test.</paragraph></section>";
        
        $content = array(
            array('name'=>'Harder', 'intro'=> $xmlText, 'img'=>str_replace('/web','', getcwd() ) .'/src/Tutei/BaseBundle/SetupFiles/content_files/blossom.png'),
            array('name'=>'Better', 'intro'=> $xmlText, 'img'=>str_replace('/web','', getcwd() ) .'/src/Tutei/BaseBundle/SetupFiles/content_files/bubbles.jpg'),
            array('name'=>'Faster', 'intro'=> $xmlText, 'img'=>str_replace('/web','', getcwd() ) .'/src/Tutei/BaseBundle/SetupFiles/content_files/buttercup.png')
        );
        
        for($x=0; $x<5;$x++){
            $locationId = (int)$created->versionInfo->contentInfo->mainLocationId;
            foreach($content as $item){           

                $fields = array(
                    array('name'=>'title', 'value'=>$item['name']),
                    array('name'=>'intro', 'value'=>$item['intro']),
                    array('name'=>'image', 'value'=>$item['img'])
                );

                $this->createContent($locationId, 'article', $fields);
            }
        }
        
        $fields = array( 

            array('name'=>'title', 'value'=>'Gallery')
        );
        
        $created = $this->createContent(2, 'gallery', $fields);
        
        $content = array(
            array('name'=>'Harder', 'img'=>str_replace('/web','', getcwd() ) .'/src/Tutei/BaseBundle/SetupFiles/content_files/blossom.png'),
            array('name'=>'Better', 'img'=>str_replace('/web','', getcwd() ) .'/src/Tutei/BaseBundle/SetupFiles/content_files/bubbles.jpg'),
            array('name'=>'Faster', 'img'=>str_replace('/web','', getcwd() ) .'/src/Tutei/BaseBundle/SetupFiles/content_files/buttercup.png')
        );
        
        $locationId = (int)$created->versionInfo->contentInfo->mainLocationId;
        foreach($content as $item){           

            $fields = array(
                array('name'=>'name', 'value'=>$item['name']),
                array('name'=>'image', 'value'=>$item['img'])
            );

            $this->createContent($locationId, 'image', $fields);
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
        return $contentService->publishVersion($draft->versionInfo);
        
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