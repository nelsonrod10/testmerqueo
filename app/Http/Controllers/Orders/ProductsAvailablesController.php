<?php

namespace App\Http\Controllers\Orders;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\OrdersProduct;

class ProductsAvailablesController extends Controller
{
    public function inventory(){
        $availableProducts = [];
        $products = OrdersProduct::with('product')->get()->groupBy('product_id');
        
        foreach ($products as $key => $product) {
            if($product[0]->product->inventory){
                $inventoryAvailable = ($product[0]->product->inventory->quantity > $product->sum('quantity'))?
                $product->sum('quantity') : $product[0]->product->inventory->quantity;
            }else{
                $inventoryAvailable = 0;
            }
            
            array_push($availableProducts, [
                'product'=>
                [
                    'id'   => $key, 
                    'name' => $product[0]->product->name,
                    'orders-total'  => $product->sum('quantity'),
                    'inventory-available'  => $inventoryAvailable
                ]
                
            ]);
        }
        
        return response()->json($availableProducts);
    }
    
    public function providers(){
        $response = [];
        $products = OrdersProduct::with('product')->get()->groupBy('product_id');
        
        foreach ($products as $key => $product) {
            if($product[0]->product->inventory){
                $inventoryAvailable = ($product[0]->product->inventory->quantity > $product->sum('quantity'))?
                $product->sum('quantity') : $product[0]->product->inventory->quantity;
            }else{
                $inventoryAvailable = 0;
            }
            $totalProvider = ($product->sum('quantity') > $inventoryAvailable)?($product->sum('quantity') - $inventoryAvailable):0;
            
            if($totalProvider > 0){
                $providers = [];
                if($product[0]->product->providers->count() > 0 ){
                    foreach($product[0]->product->providers as $productProvider){
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
                array_push($response, [
                    'product' => [
                        'id'   => $key, 
                        'name' => $product[0]->product->name,
                        'orders-total'  => $product->sum('quantity'),
                        
                        'providers' => $providers
                    ],
                ]);
            }
            
        }
        return response()->json($response);
    }
    
}
