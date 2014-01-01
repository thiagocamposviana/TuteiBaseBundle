TODO:
    - Improve content generation on install;
    - Improve pagination;
    - Review and improve templates;
    - Review and improve cache;
    - Release version 2.0.
    
#########################

- Check ez5_jenkins.png to have an idea on how to configure jenkins to work with
 this project.

- To check twig templates:
php ezpublish/console twig:lint @TuteiBaseBundle

- When using search, results do not contain the location id of the matched 
location, looks like it returns only the main location id. It should be a problem
if the content has several locations.

- You can't call a render function and use a template that calls the render 
function.

- Templates override prioritizes the first matched rule. You need to use 
dependency injection and prepend the settings you want to have a higher priority.

- Default templates for a view can be achieved by appending a rule that matches 
UrlAlias: "/"

- When creating an Image\Value you need to pass the full image path as string:
/var/www/path_to_ez/path_to_image

- In twig, {{ ezpublish.legacy }}  only has content if you are in legacy 
fallback for content.

- The search class in ez 5 works a little different from the fetch, fields needs
be searchable.

- Updating a content using new ez publish php api is causing error kernel 20 to 
subnodes.

- Use filter='cssrewrite' to fix css paths for fonts, images, etc.


4.x                         5.x
  
ContentClass                ContentType	
	
  
ContentClassGroup           ContentTypeGroup	
  
Datatype                    FieldType                	
  
Node                        Location
  
ContentObject               Content(meta info in ContentInfo)
  
ContentObjectVersion        VersionInfo
  
ContentObjectAttribute      Field + FieldValue
  
ContentClassAttribute       FieldDefinition



eZ Publish Template         Twig Template

Extension                   Bundle

Module                      Controller class (based on 
                                eZ\Bundle\EzPublishCoreBundle\Controller)

CLI                         ezpublish/console component - commands

View                        Controller action
Fetch function              Replaced by controller+view, the template "fetch"
                                function is replaced by "render"

Template operator           Filter + function

settings/                   ezpublish/config and Resources/config

site.ini                    ezpublish.yml


Bundle Directory Structure

Controller - contains the controllers of the bundle (e.g. HelloController.php);

DependencyInjection/ - holds certain dependency injection extension classes, which may import service configuration

Resources/config/ - houses configuration, including routing configuration (e.g. routing.yml);

Resources/views/ - holds templates organized by controller name (e.g. Hello/index.html.twig);

Resources/public/ - contains web assets (images, stylesheets, etc) and is copied or symbolically linked into the project web/ directory via the assets:install console command;

Tests - holds all tests for the bundle.

API/ - contains the value object definitions, service interfaces, etc. In short, public API interfaces provided by your bundle.

Core - holds field types implementation, persistence related classes, repository implementations, signal-slot implementations, etc.

SPI/ - (Service Provider Interface) holds interfaces that can contain one or several implementations around Persistence (database), IO (file system), FieldTypes (formerly DataTypes), Limitations (permissions system), etc.

EventListeners/ - holds event listener implementation for both eZ Publish 5 and LS

Command - contains Console commands; each file must be suffixed with Command.php


Accessing DB:

$connection = $this->getConnection();

$query = $connection->createDeleteQuery();
$query
    ->deleteFrom( … )
    ->where(…)

$query->prepare()->execute();


Templating field_types:

Template:

{% extends "EzPublishCoreBundle::content_fields.html.twig" %}

{% block (fieldtype)_field %}

{% endblock %}

Settings:

system:
    ezdemo_site:
        location_view:
            field_templates:
            -
                template: "TestBundle:fields:field_templates.html.twig"
                # Priority is optional (default is 0). The higher it is, the higher your template gets in the list.
                priority: 10

Globally Overriding Resources

Suppose you want to override the eZDemo page layout:
· In the ezpublish folder, create a Resources folder
· Replicate the directory structure for the elements you want to override
· e.g. Resources/eZDemoBundle/views - use the correct bundle name!!!
· Place your files there



Events:

Check \eZ\Publish\Core\MVC\Symfony\Event\
http://symfony.com/doc/current/cookbook/service_container/event_listener.html
partialcontent.com/code/working-with-ez-publish-5-listeners

    public function __construct( Repository $repository, ConfigResolverInterface $configResolver )
    {
        //Add these to the class so we have them when the event method is triggered
        $this->repository = $repository;
        $this->configResolver = $configResolver;
    }


    public function onPreContentView( PreContentViewEvent $event )
    {
        //What's our design/surround object in the repository called? Check the config
        //This reads the setting we added to parameters.yml
        $surroundTypeIdentifier = $this->configResolver->getParameter('surround_type', 'ez5tutorial');
 
        //To retrieve the surround object, first access the repository
        $searchService = $this->repository->getSearchService();
 
        //Find the first object that matched the name from our config
        //(We only expect there to be one in the DB)
        $surround = $searchService->findSingle(
            new Criterion\ContentTypeIdentifier($surroundTypeIdentifier)
        );
 
        //Retrieve the view context from the event
        $contentView = $event->getContentView();
 
        //Add the surround variable to the context
        $contentView->addParameters( array('surround' => $surround) );
    }


services.yml:

blend_tutorial_blog.pre_content_view_listener.class: Blend\TutorialBlogBundle\EventListener\PreContentViewListener

 add to service section:

#define our event listener
blend_tutorial_blog.pre_content_view_listener:
    class: %blend_tutorial_blog.pre_content_view_listener.class%
    #These services will be passed to the constructor
    arguments: [@ezpublish.api.repository, @ezpublish.config.resolver]
    #This tag tells the framework we're interested in the PreContentView event
    tags:
        - {name: kernel.event_listener, event: ezpublish.pre_content_view, method: onPreContentView}