<?php

namespace Tests\Unit;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;
use App\Order;

class OrderTest extends TestCase
{
    /**
     * A basic unit test example.
     *
     * @test
     */
    public function orderHasProducts()
    {
        $order = Order::find(1);
        return $this->assertIsObject($order->orderProducts);
    }

    /**
     * A basic unit test example.
     *
     * @test
     */
    public function orderDontHaveProducts()
    {
        $order = Order::find(100);
        return $this->assertIsNotObject($order);
    }
}
