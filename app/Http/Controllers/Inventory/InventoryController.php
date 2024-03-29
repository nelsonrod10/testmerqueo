<?php

namespace App\Http\Controllers\Inventory;

use App\Http\Controllers\ApiController;
use App\OrdersProduct;

class InventoryController extends ApiController
{
    public function nextDay(){
        $response = [];
        $products = OrdersProduct::all()->groupBy("product_id");

        foreach($products as $key => $product):
            $inventarioInicialProducto = $despachos = $available = 0;
            $totalOrdenesProducto = $product->sum('quantity');

            if($product[0]->hasInventory()){
                $inventarioInicialProducto = $product[0]->hasInventory()->quantity;
                $despachos = ($inventarioInicialProducto > $totalOrdenesProducto)? $totalOrdenesProducto : ($inventarioInicialProducto);
            }
            $available = $inventarioInicialProducto - $despachos;
            array_push($response, [
                'id'    => $product[0]->product->id,
                'name'  => $product[0]->product->name,
                'total-available' => $available
            ]);
        endforeach;
        return $this->sendReponse($response, 200);

    }
}
