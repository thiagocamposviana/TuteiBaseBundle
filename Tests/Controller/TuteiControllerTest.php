<?php

namespace Tutei\BaseBundle\Tests\Controller;

use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;

class TuteiControllerTest extends WebTestCase
{

    public function testSearch()
    {
        $client = static::createClient();

        $crawler = $client->request('GET', '/content/search');

        $this->assertTrue($crawler->filter('html:contains("Search returned")')->count() > 0);
    }

}
