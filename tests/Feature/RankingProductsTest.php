<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;
use App\OrdersProduct;

class RankingProductsTest extends TestCase
{
    /**
     * @test
     */
    public function bestSellersProducts()
    {
        $response = $this->json('GET','/products/best-sellers');
        $response->assertJsonStructure([
              'data' => [['id','name','quantity']]
          ])->assertStatus(200);
    }

    /**
     * @test
     */
    public function lessSoldProducts()
    {
        $response = $this->json('GET','/products/less-sold');
        $response->assertJsonStructure([
              'data' => [['id','name','quantity']]
          ])->assertStatus(200);
    }
}
