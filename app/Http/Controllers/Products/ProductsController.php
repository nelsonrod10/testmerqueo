<?php

namespace App\Http\Controllers\Products;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\OrdersProduct;

class ProductsController extends Controller
{
    public function bestSellers(){
        $products = [];
        $promedioVendido = OrdersProduct::all()->average('quantity');
        $masVendidos = OrdersProduct::MasVendidos($promedioVendido)->get()->sortByDesc('quantity');
        
        foreach($masVendidos as $productVendido){
            array_push($products, [
             'product'=>[
                 'id'       =>  $productVendido->product->id, 
                 'name'     =>  $productVendido->product->name,
                 'quantity' =>  $productVendido->quantity
             ]   
            ]);
        }
        return response()->json([
            'best-sellers'=> $products  
        ]);
        
    }
    
    public function lessSold(){
        $products = [];
        $promedioVendido = OrdersProduct::all()->average('quantity');
        $menosVendidos = OrdersProduct::MenosVendidos($promedioVendido)->get()->sortBy('quantity');
        
        foreach($menosVendidos as $productVendido){
            array_push($products, [
             'product'=>[
                 'id'       =>  $productVendido->product->id, 
                 'name'     =>  $productVendido->product->name,
                 'quantity' =>  $productVendido->quantity
             ]   
            ]);
        }
        return response()->json([
            'less-sold'=> $products
        ]);
    }
}
