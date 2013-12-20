<?php

namespace Tutei\BaseBundle\Tests\Controller;

use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;

class TuteiControllerTest extends WebTestCase
{

    public function testEmptySearchText()
    {
        $options = array(
            'environment' => 'test'
        );

        $client = static::createClient($options);

        $crawler = $client->request('GET', '/content/search');

        $this->assertTrue($crawler->filter('html:contains("Search returned")')->count() > 0);
    }

    public function testSearchPostAction()
    {
        $options = array(
            'environment' => 'test'
        );

        $client = static::createClient($options);

        $crawler = $client->request('POST', '/content/search', array('search_text' => 'Gallery'));

        $this->assertTrue($crawler->filter('html:contains("Gallery")')->count() > 0);
    }

    public function testGallery()
    {
        $options = array(
            'environment' => 'test'
        );

        $client = static::createClient($options);

        $crawler = $client->request('GET', '/Gallery');

        $this->assertTrue($crawler->filter('html:contains("Image 01")')->count() > 0);
    }

    public function testArticles()
    {
        $options = array(
            'environment' => 'test'
        );

        $client = static::createClient($options);

        $crawler = $client->request('GET', '/Articles');

        $this->assertTrue($crawler->filter('html:contains("Article 01")')->count() > 0);

        $this->assertTrue($crawler->filter('html:contains("Article 05")')->count() > 0);

        $this->assertTrue($crawler->filter('html:contains("Next")')->count() > 0);
    }

    public function testFrontpage()
    {
        $options = array(
            'environment' => 'test'
        );

        $client = static::createClient($options);

        $crawler = $client->request('GET', '/');
        $this->assertTrue($crawler->filter('html:contains("Banner 1")')->count() > 0);

        $this->assertTrue($crawler->filter('html:contains("Banner 2")')->count() > 0);

        $this->assertTrue($crawler->filter('html:contains("Item 1")')->count() > 0);

        $this->assertTrue($crawler->filter('html:contains("Item 6")')->count() > 0);
        
    }
    
    public function testInfoboxes()
    {
        $options = array(
            'environment' => 'test'
        );

        $client = static::createClient($options);

        $crawler = $client->request('GET', '/Folders');
        $this->assertTrue($crawler->filter('html:contains("Infobox")')->count() > 0);

        $crawler = $client->request('GET', '/Folders/Folders/Folders/Folders');
        $this->assertTrue($crawler->filter('html:contains("Changed Infobox")')->count() > 0);
        
    }
    
    public function testFooter()
    {
        $options = array(
            'environment' => 'test'
        );

        $client = static::createClient($options);

        $crawler = $client->request('GET', '/');
        $this->assertTrue($crawler->filter('html:contains("Contact Us")')->count() > 0);

        $this->assertTrue($crawler->filter('html:contains("Stay Connected")')->count() > 0);

        $this->assertTrue($crawler->filter('html:contains("Thiago Campos Viana")')->count() > 0);
        
    }

}
