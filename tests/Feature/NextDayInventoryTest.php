<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class NextDayInventoryTest extends TestCase
{
    /**
     * @test
     */
    public function nextDayInventory()
    {
        $response = $this->json('GET','/inventory/next-day');
        $response->assertJsonStructure([
              'data' => [['id','name','total-available']]
          ])->assertStatus(200);
    }
}
