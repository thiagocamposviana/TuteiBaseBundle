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

class FixImagesCommand extends ContainerAwareCommand {

    /**
     * Configures the command
     */
    protected function configure() {
        $this->setName('tutei:base:fix_images');
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

        $query->criterion =
            new ContentTypeIdentifier( array( 'block_item' ) )
        ;

        // array( new SortClause\ContentId() )


        var_dump($searchService->findContent($query));
        exit;

        /*
        $contentType = $contentTypeService->loadContentTypeByIdentifier('article');
        
        $contentCreateStruct = $contentService->newContentCreateStruct($contentType, 'eng-GB');
        
        
        $contentCreateStruct->setField('title', 'My title');
$xml = '<?xml version="1.0" encoding="utf-8"?>
<section xmlns:image="http://ez.no/namespaces/ezpublish3/image/"
         xmlns:xhtml="http://ez.no/namespaces/ezpublish3/xhtml/"
         xmlns:custom="http://ez.no/namespaces/ezpublish3/custom/"><paragraph>This is a piece of text</paragraph></section>';
        $contentCreateStruct->setField('intro', $xml);
        #$contentCreateStruct->setField('body', 'a body');

        $locationCreateStruct = $locationService->newLocationCreateStruct(2);

        $draft = $contentService->createContent($contentCreateStruct, array($locationCreateStruct));
        $content = $contentService->publishVersion($draft->versionInfo);
         * 
         */
        $contentType = $contentTypeService->loadContentTypeByIdentifier('user');
        $contentCreateStruct = $contentService->newContentCreateStruct($contentType, 'eng-GB');
        $editorsGroupId = 13;

        $userService = $repository->getUserService();
        // Instantiate a create struct with mandatory properties
        $userCreate = $userService->newUserCreateStruct(
            'user9',
            'user9@example.com',
            'secret',
            'eng-GB'
        );
        $userCreate->enabled = true;

        // Set some fields required by the user ContentType
        $contentCreateStruct->setField('first_name', 'Example');
        $contentCreateStruct->setField('last_name', 'User');
        
        $userCreate->setField( 'first_name', 'Example' );
        $userCreate->setField( 'last_name', 'User' );

        // Load parent group for the user
        $group = $userService->loadUserGroup( $editorsGroupId );
        
        // Create a new user instance.
        $user = $userService->createUser( $userCreate, array( $group ) );
        
        $contentCreateStruct->setField('user_account', 
               new Value( 
                array(
                "login" => $user->login,
                "email" => $user->email,
               
                
                "enabled" => $user->enabled
                ))
                
                
                );
                $output->writeln("Hello $name");
                
        $locationCreateStruct = $locationService->newLocationCreateStruct(12);
        $draft = $contentService->createContent($contentCreateStruct, array($locationCreateStruct));
        $content = $contentService->publishVersion($draft->versionInfo);
    }

}