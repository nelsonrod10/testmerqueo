<?php

namespace App\Http\Controllers\Products;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\OrdersProduct;

class ProductsController extends Controller
{
    public function bestSellers(){
        
        $promedioVendido = OrdersProduct::all()->average('quantity');
        $masVendidos = OrdersProduct::MasVendidos($promedioVendido)->get()->sortByDesc('quantity');
        
        return response()->json([
            'best-sellers'=> $this->arrayProducts($masVendidos)
        ]);
        
    }
    
    public function lessSold(){
        $promedioVendido = OrdersProduct::all()->average('quantity');
        $menosVendidos = OrdersProduct::MenosVendidos($promedioVendido)->get()->sortBy('quantity');
        
        return response()->json([
            'less-sold'=> $this->arrayProducts($menosVendidos)
        ]);
    }
    
    private function arrayProducts($vendidos){
        $products = [];
        foreach($vendidos as $productVendido){
            array_push($products, [
             'product'=>[
                 'id'       =>  $productVendido->product->id, 
                 'name'     =>  $productVendido->product->name,
                 'quantity' =>  $productVendido->quantity
             ]   
            ]);
        }
        
        return $products;
    }
}
