<?php

namespace Tutei\BaseBundle\Tests\Controller;

use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;

class TuteiControllerTest extends WebTestCase
{

    public function testSearch()
    {
        $options = array(
            'environment' => 'test'
        );
        
        $client = static::createClient($options);
        

        $crawler = $client->request('GET', '/content/search');
        
        var_dump($crawler);

        $this->assertTrue($crawler->filter('html:contains("Search returned")')->count() > 0);
    }

}
