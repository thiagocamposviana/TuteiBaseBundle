<?php

/**
 * File containing the CreateCommand class
 *
 * @author Thiago Campos Viana <thiagocamposviana@gmail.com>
 */

namespace Tutei\BaseBundle\Command;

use Symfony\Bundle\FrameworkBundle\Command\ContainerAwareCommand;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;

/**
 * Creates sample content
 */
class CreateCommand extends ContainerAwareCommand
{

    /**
     * Configures the command
     */
    protected function configure()
    {
        $this->setName('tutei:create');
    }

    /**
     * Executes the command
     * @param InputInterface  $input
     * @param OutputInterface $output
     */
    protected function execute(InputInterface $input, OutputInterface $output)
    {

        $repository = $this->getContainer()->get('ezpublish.api.repository');

        $userService = $repository->getUserService();
        $user = $userService->loadUserByCredentials('admin', 'publish');
        $repository->setCurrentUser($user);

        $xmlText = "<?xml version='1.0' encoding='utf-8'?><section>"
            . "<paragraph>This infobox will be shown here until there's "
            . "another infobox created in the content tree in a depth closer to "
            . "the current location.</paragraph>"
            . "</section>";

        $fieldsInfo = array(
            array('name' => 'title', 'value' => 'Infobox'),
            array('name' => 'body', 'value' => $xmlText),
        );

        $created = $this->createContent(2, 'infobox', $fieldsInfo);

        $fields = array(
            array('name' => 'name', 'value' => 'Folders'),
        );

        $sideMenuParent = $this->createContent(2, 'folder', $fields);

        $created = $this->createContent($sideMenuParent->versionInfo->contentInfo->mainLocationId, 'folder', $fields);
        $this->createContent($sideMenuParent->versionInfo->contentInfo->mainLocationId, 'folder', $fields);
        $this->createContent($sideMenuParent->versionInfo->contentInfo->mainLocationId, 'folder', $fields);
        $this->createContent($sideMenuParent->versionInfo->contentInfo->mainLocationId, 'folder', $fields);
        $this->createContent($sideMenuParent->versionInfo->contentInfo->mainLocationId, 'folder', $fields);

        $created = $this->createContent($created->versionInfo->contentInfo->mainLocationId, 'folder', $fields);


        $xmlText = "<?xml version='1.0' encoding='utf-8'?><section>"
            . "<paragraph>Here's a brand new infobox!</paragraph>"
            . "</section>";

        $fieldsInfo = array(
            array('name' => 'title', 'value' => 'Changed Infobox'),
            array('name' => 'body', 'value' => $xmlText),
        );

        $created = $this->createContent($created->versionInfo->contentInfo->mainLocationId, 'infobox', $fieldsInfo);

        /* Creates multibanner */
        $fields = array(
            array('name' => 'title', 'value' => 'Multibanner'),
        );

        $created = $this->createContent(2, 'multibanner', $fields);

        /* Creates banners */
        $content = array(
            array('name' => 'Banner 1', 'img' => str_replace('/web', '', getcwd()) . '/src/Tutei/BaseBundle/SetupFiles/content_files/image5_banner.jpg'),
            array('name' => 'Banner 2', 'img' => str_replace('/web', '', getcwd()) . '/src/Tutei/BaseBundle/SetupFiles/content_files/image1_banner.jpg')
        );

        $locationId = (int) $created->versionInfo->contentInfo->mainLocationId;
        foreach ($content as $item) {

            $fields = array(
                array('name' => 'title', 'value' => $item['name']),
                array('name' => 'image', 'value' => $item['img'])
            );

            $this->createContent($locationId, 'banner', $fields);
        }

        /* Creates block */
        $fields = array(
            array('name' => 'title', 'value' => 'Block'),
            array('name' => 'columns', 'value' => 2)
        );

        $created = $this->createContent(2, 'block', $fields);

        /* Creates block items */
        $content = array(
            array('name' => 'Item 1', 'img' => str_replace('/web', '', getcwd()) . '/src/Tutei/BaseBundle/SetupFiles/content_files/image12_box.jpg'),
            array('name' => 'Item 2', 'img' => str_replace('/web', '', getcwd()) . '/src/Tutei/BaseBundle/SetupFiles/content_files/image11_box.jpg')
        );

        $locationId = (int) $created->versionInfo->contentInfo->mainLocationId;
        foreach ($content as $item) {

            $fields = array(
                array('name' => 'title', 'value' => $item['name']),
                array('name' => 'image', 'value' => $item['img'])
            );

            $this->createContent($locationId, 'block_item', $fields);
        }

        $fields = array(
            array('name' => 'title', 'value' => 'Block'),
            array('name' => 'columns', 'value' => 3)
        );

        $created = $this->createContent(2, 'block', $fields);

        $content = array(
            array('name' => 'Item 3', 'img' => str_replace('/web', '', getcwd()) . '/src/Tutei/BaseBundle/SetupFiles/content_files/image10_box.jpg'),
            array('name' => 'Item 4', 'img' => str_replace('/web', '', getcwd()) . '/src/Tutei/BaseBundle/SetupFiles/content_files/image9_box.jpg'),
            array('name' => 'Item 5', 'img' => str_replace('/web', '', getcwd()) . '/src/Tutei/BaseBundle/SetupFiles/content_files/image8_box.jpg')
        );

        $locationId = (int) $created->versionInfo->contentInfo->mainLocationId;
        foreach ($content as $item) {

            $fields = array(
                array('name' => 'title', 'value' => $item['name']),
                array('name' => 'image', 'value' => $item['img'])
            );

            $this->createContent($locationId, 'block_item', $fields);
        }

        $fields = array(
            array('name' => 'title', 'value' => 'Block'),
            array('name' => 'columns', 'value' => 4)
        );

        $created = $this->createContent(2, 'block', $fields);

        $content = array(
            array('name' => 'Item 6', 'img' => str_replace('/web', '', getcwd()) . '/src/Tutei/BaseBundle/SetupFiles/content_files/image7_box.jpg'),
            array('name' => 'Item 7', 'img' => str_replace('/web', '', getcwd()) . '/src/Tutei/BaseBundle/SetupFiles/content_files/image6_box.jpg'),
            array('name' => 'Item 8', 'img' => str_replace('/web', '', getcwd()) . '/src/Tutei/BaseBundle/SetupFiles/content_files/image5_box.jpg'),
            array('name' => 'Item 9', 'img' => str_replace('/web', '', getcwd()) . '/src/Tutei/BaseBundle/SetupFiles/content_files/image4_box.jpg')
        );

        $locationId = (int) $created->versionInfo->contentInfo->mainLocationId;
        foreach ($content as $item) {

            $fields = array(
                array('name' => 'title', 'value' => $item['name']),
                array('name' => 'image', 'value' => $item['img'])
            );

            $this->createContent($locationId, 'block_item', $fields);
        }

        /* Creates Gallery */
        $fields = array(
            array('name' => 'title', 'value' => 'Gallery')
        );

        $created_gallery = $this->createContent(2, 'gallery', $fields);

        /* Creates the articles folder */
        $fields = array(
            array('name' => 'name', 'value' => 'Articles')
        );

        $articles_folder = $this->createContent(2, 'folder', $fields);

        /* Creates gallery's image */
        $content = array(
            array('name' => 'Image 01', 'img' => str_replace('/web', '', getcwd()) . '/src/Tutei/BaseBundle/SetupFiles/content_files/image1_box.jpg'),
            array('name' => 'Image 02', 'img' => str_replace('/web', '', getcwd()) . '/src/Tutei/BaseBundle/SetupFiles/content_files/image2_box.jpg'),
            array('name' => 'Image 03', 'img' => str_replace('/web', '', getcwd()) . '/src/Tutei/BaseBundle/SetupFiles/content_files/image3_box.jpg'),
            array('name' => 'Image 04', 'img' => str_replace('/web', '', getcwd()) . '/src/Tutei/BaseBundle/SetupFiles/content_files/image4_box.jpg'),
            array('name' => 'Image 05', 'img' => str_replace('/web', '', getcwd()) . '/src/Tutei/BaseBundle/SetupFiles/content_files/image5_box.jpg'),
            array('name' => 'Image 06', 'img' => str_replace('/web', '', getcwd()) . '/src/Tutei/BaseBundle/SetupFiles/content_files/image6_box.jpg'),
            array('name' => 'Image 07', 'img' => str_replace('/web', '', getcwd()) . '/src/Tutei/BaseBundle/SetupFiles/content_files/image7_box.jpg'),
            array('name' => 'Image 08', 'img' => str_replace('/web', '', getcwd()) . '/src/Tutei/BaseBundle/SetupFiles/content_files/image8_box.jpg'),
            array('name' => 'Image 09', 'img' => str_replace('/web', '', getcwd()) . '/src/Tutei/BaseBundle/SetupFiles/content_files/image9_box.jpg'),
            array('name' => 'Image 10', 'img' => str_replace('/web', '', getcwd()) . '/src/Tutei/BaseBundle/SetupFiles/content_files/image10_box.jpg'),
            array('name' => 'Image 11', 'img' => str_replace('/web', '', getcwd()) . '/src/Tutei/BaseBundle/SetupFiles/content_files/image11_box.jpg'),
            array('name' => 'Image 12', 'img' => str_replace('/web', '', getcwd()) . '/src/Tutei/BaseBundle/SetupFiles/content_files/image12_box.jpg')
        );
        $created_images = array();
        $locationId = (int) $created_gallery->versionInfo->contentInfo->mainLocationId;
        foreach ($content as $item) {

            $fields = array(
                array('name' => 'name', 'value' => $item['name']),
                array('name' => 'image', 'value' => $item['img'])
            );

            $created_images[] = $this->createContent($locationId, 'image', $fields);
        }

        /* Creates articles inside the articles folder */
        $xmlText = "<?xml version='1.0' encoding='utf-8'?><section><paragraph>Article intro test.</paragraph></section>";

        $content = array(
            array('name' => 'Article 01', 'intro' => $xmlText, 'image' => $created_images[0]->versionInfo->contentInfo),
            array('name' => 'Article 02', 'intro' => $xmlText, 'image' => $created_images[1]->versionInfo->contentInfo),
            array('name' => 'Article 03', 'intro' => $xmlText, 'image' => $created_images[2]->versionInfo->contentInfo),
            array('name' => 'Article 04', 'intro' => $xmlText, 'image' => $created_images[3]->versionInfo->contentInfo),
            array('name' => 'Article 05', 'intro' => $xmlText, 'image' => $created_images[4]->versionInfo->contentInfo),
            array('name' => 'Article 06', 'intro' => $xmlText, 'image' => $created_images[5]->versionInfo->contentInfo),
            array('name' => 'Article 07', 'intro' => $xmlText, 'image' => $created_images[6]->versionInfo->contentInfo),
            array('name' => 'Article 08', 'intro' => $xmlText, 'image' => $created_images[7]->versionInfo->contentInfo),
            array('name' => 'Article 09', 'intro' => $xmlText, 'image' => $created_images[8]->versionInfo->contentInfo),
            array('name' => 'Article 10', 'intro' => $xmlText, 'image' => $created_images[9]->versionInfo->contentInfo),
        );

        $locationId = (int) $articles_folder->versionInfo->contentInfo->mainLocationId;
        foreach ($content as $item) {

            $fields = array(
                array('name' => 'title', 'value' => $item['name']),
                array('name' => 'intro', 'value' => $item['intro']),
                array('name' => 'image', 'value' => $item['image']),
            );

            $this->createContent($locationId, 'article', $fields);
        }
    }

    public function createContent($locationId, $contentType, $fields)
    {
        $repository = $this->getContainer()->get('ezpublish.api.repository');
        $contentTypeService = $repository->getContentTypeService();
        $contentType = $contentTypeService->loadContentTypeByIdentifier($contentType);
        $contentService = $repository->getContentService();
        $contentCreateStruct = $contentService->newContentCreateStruct($contentType, 'eng-GB');


        foreach ($fields as $field) {
            $contentCreateStruct->setField($field['name'], $field['value']);
        }


        $locationService = $repository->getLocationService();

        $locationCreateStruct = $locationService->newLocationCreateStruct($locationId);

        $draft = $contentService->createContent($contentCreateStruct, array($locationCreateStruct));
        return $contentService->publishVersion($draft->versionInfo);
    }

    public function updateContent($locationId, $fields)
    {
        $repository = $this->getContainer()->get('ezpublish.api.repository');
        $locationService = $repository->getLocationService();

        $location = $locationService->loadLocation($locationId);

        $contentService = $repository->getContentService();

        $contentInfo = $contentService->loadContentInfo($location->contentInfo->id);
        $contentDraft = $contentService->createContentDraft($contentInfo);


        $contentUpdateStruct = $contentService->newContentUpdateStruct();

        foreach ($fields as $field) {
            $contentUpdateStruct->setField($field['name'], $field['value']);
        }

        $contentDraftUpdated = $contentService->updateContent($contentDraft->versionInfo, $contentUpdateStruct);
        return $contentService->publishVersion($contentDraftUpdated->versionInfo);
    }

    public function updateType()
    {

        $repository = $this->getContainer()->get('ezpublish.api.repository');
        $contentTypeService = $repository->getContentTypeService();
        $contentType = $contentTypeService->loadContentTypeByIdentifier('folder');

        $contentDraft = $contentTypeService->createContentTypeDraft($contentType);

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

        $contentTypeService->addFieldDefinition($contentDraft, $titleFieldCreate);

        return $contentTypeService->publishContentTypeDraft($contentDraft);
    }

}
