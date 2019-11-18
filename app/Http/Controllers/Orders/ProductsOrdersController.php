<?php

namespace App\Http\Controllers\Orders;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Order;

class ProductsOrdersController extends Controller
{
    public function delivery($id){
        $orderProducts = [];
        $order = Order::find($id);
        
        if($order){
            foreach ($order->orderProducts as $product){
                $inventoryQuantity = 'No existe en inventario';
                $providersQuantity = 'No existe proveedor';
                if($product->product->inventory){
                    (int)$inventoryQuantity = ($product->product->inventory->quantity > $product->quantity)?
                    $product->quantity : $product->product->inventory->quantity;
                }
                if($product->product->providers->count() > 0){
                    (int)$providersQuantity = $product->quantity - $inventoryQuantity;
                }
                array_push($orderProducts, [
                    'id'                 => $product->product_id,
                    'name'               => $product->product->name,
                    'order-quantity'     => $product->quantity,
                    'inventory-quantity' => $inventoryQuantity,
                    'provider-quantity'  => $providersQuantity
                ]
                        
                );
            }
        }else{
            return response()->json("Esta orden no existe");
        }
        
        return response()->json(['order'=>[
                'id' => $order->id,
                'priority'  => $order->priority,
                'address'   => $order->address,
                'user'      => $order->user,
                'products'  => $orderProducts
            ]
        ]);
    }
}
