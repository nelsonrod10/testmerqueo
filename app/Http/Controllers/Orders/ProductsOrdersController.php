<?php

namespace App\Http\Controllers\Orders;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Order;

class ProductsOrdersController extends Controller
{
    public function delivery($id){
        $order = Order::find($id);
        if($order){
            return response()->json(['order'=>[
                    'id'        => $order->id,
                    'priority'  => $order->priority,
                    'address'   => $order->address,
                    'user'      => $order->user,
                    'products'  => $this->productsList($order)
                ]
            ]);
        }
         
        return response()->json("Esta orden no existe");
    }
    
    private function productsList($order){
        $orderProducts = [];
        foreach ($order->orderProducts as $product){
                array_push($orderProducts, [
                    'id'                 => $product->product_id,
                    'name'               => $product->product->name,
                    'order-quantity'     => $product->quantity,
                    'inventory-quantity' => $this->productInventory($product),
                    'provider-quantity'  => $this->providersQuantity($product)
                ]
            );
        }
        
        return $orderProducts;
    }
    
    private function productInventory($product){
        $inventoryQuantity = 'No existe en inventario';
        if($product->product->inventory){
            (int)$inventoryQuantity = ($product->product->inventory->quantity > $product->quantity)?
            $product->quantity : $product->product->inventory->quantity;
        }
        
        return $inventoryQuantity;
    }
    
    private function providersQuantity($product){
        $providersQuantity = 'No existe proveedor';
        if($product->product->providers->count() > 0){
            (int)$providersQuantity = $product->quantity - $this->productInventory($product);
        }
        
        return $providersQuantity;
    }
}
