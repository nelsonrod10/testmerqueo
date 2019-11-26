<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class AvailablesProductsTest extends TestCase
{
    /**
     * @test
     */
    public function ordersProductHasInventoryAvailable()
    {
        $response = $this->json('GET','/orders/availables-products-inventory');
        $response->assertJsonStructure([
              'data' => [['id','name','orders-total','inventory-available']]
          ])->assertStatus(200);
    }

    /**
     * @test
     */
    public function ordersProductHasProviders()
    {
        $response = $this->json('GET','/orders/availables-products-providers');
        $response->assertJsonStructure([
              'data' => [['id','name','orders-total',
                'providers'=>[['id','name','order',]]
              ]]
          ])->assertStatus(200);
    }
}
