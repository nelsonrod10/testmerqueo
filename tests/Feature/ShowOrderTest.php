<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;
use App\Order;

class ShowOrderTest extends TestCase
{
    /**
     * @test
     */
    public function testShowOrder()
    {
      $order = Order::find(10);
      $response = $this->json('GET',"/orders/$order->id/products-inventory-providers");
      $response->assertJsonStructure([
            'data' => [
              'id',
              'priority',
              'address',
              'user',
              'products'=>[[
                  'id',
                  'name',
                  'order-quantity',
                  'inventory-quantity',
                  'provider-quantity',
                ]
              ],
            ]
        ])->assertStatus(200);

    }

    /**
     * @test
     */
    public function testOrderDontExists()
    {
      $response = $this->json('GET',"/orders/1000/products-inventory-providers");
      $response->assertJson(["data"=>"Esta orden no existe"])->assertStatus(404);

    }
}
