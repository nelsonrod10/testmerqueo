<?php

namespace Tests\Unit;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;
use App\OrdersProduct;

class OrdersProductTest extends TestCase
{
    protected $orderProduct;

    protected function findOrderProduct(){
      $this->orderProduct = OrdersProduct::find(3);
    }

    /**
     * @test
     */
    public function productHasAorder()
    {
        $this->findOrderProduct();
        return $this->assertIsObject($this->orderProduct->order);
    }

    /**
     * @test
     */
    public function productBelongsToProduct()
    {
        $this->findOrderProduct();
        return $this->assertIsObject($this->orderProduct->product);
    }

    /**
     * @test
     */
    public function bestSellerProducts()
    {
        $this->findOrderProduct();
        return $this->assertIsObject($this->orderProduct->masVendidos(20));
    }

    /**
     * @test
     */
    public function lessSoldProducts()
    {
        $this->findOrderProduct();
        return $this->assertIsObject($this->orderProduct->menosVendidos(20));
    }

    /**
     * @test
     */
    public function ordersProductHasInventory()
    {
        $inventory = 0;
        $this->findOrderProduct();
        if($this->orderProduct->hasInventory()){
          $inventory = $this->orderProduct->hasInventory()->quantity;
        }
        return $this->assertIsInt($inventory);
    }

    /**
     * @test
     */
    public function testOrdersProductHasProvider()
    {
        $providers = 0;
        $this->findOrderProduct();
        if($this->orderProduct->hasProviders()){
          $providers = $this->orderProduct->hasProviders();
        }
        return $this->assertIsInt($providers);
    }
}
