<?php

namespace App\Http\Controllers\Orders;

use App\Http\Controllers\ApiController;
use App\OrdersProduct;

class ProductsAvailablesController extends ApiController
{
    public function inventory(){
        $availableProducts = [];
        $products = OrdersProduct::with('product')->get()->groupBy('product_id');
        foreach ($products as $key => $product) {
            array_push($availableProducts, [
                'product'=>
                [
                    'id'   => $key,
                    'name' => $product[0]->product->name,
                    'orders-total'  => $product->sum('quantity'),
                    'inventory-available'  => $this->inventoryAvailable($product[0], $product)
                ]
            ]);
        }
        return $this->sendReponse($availableProducts, 200);

    }

    public function providers(){
        $response = [];
        $products = OrdersProduct::with('product')->get()->groupBy('product_id');

        foreach ($products as $key => $product) {
            $inventoryAvailable = $this->inventoryAvailable($product[0], $product);
            $totalProvider = ($product->sum('quantity') > $inventoryAvailable)?($product->sum('quantity') - $inventoryAvailable):0;

            if($totalProvider > 0){

                array_push($response, [
                    'product' => [
                        'id'   => $key,
                        'name' => $product[0]->product->name,
                        'orders-total'  => $product->sum('quantity'),
                        'providers' => $this->providersList($product[0], $totalProvider)
                    ],
                ]);
            }
        }
        return $this->sendReponse($response, 200);
    }

    private function inventoryAvailable($product, $groupProduct) {
        $inventoryAvailable = 0;
        if($product->product->inventory){
            $inventoryAvailable = ($product->product->inventory->quantity > $groupProduct->sum('quantity'))?
            $groupProduct->sum('quantity') : $product->product->inventory->quantity;
        }

        return $inventoryAvailable;
    }

    private function providersList($product,$totalProvider){
        $providers = [];
        if($product->product->providers->count() > 0 ){
            foreach($product->product->providers as $productProvider){
                array_push($providers,[
                    'id' => $productProvider->provider->id,
                    'name' => $productProvider->provider->name,
                    'order' => $totalProvider
                ]);
            }
        }else{
            array_push($providers,[
                'id' => 0,
                'name' => "No existe Proveedor",
                'order' => $totalProvider
            ]);
        }
        return $providers;
    }
}
