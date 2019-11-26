<?php

namespace App\Http\Controllers\Products;

use App\Http\Controllers\ApiController;
use App\OrdersProduct;

class ProductsController extends ApiController
{
    public function bestSellers(){

        $promedioVendido = OrdersProduct::all()->average('quantity');
        $masVendidos = OrdersProduct::MasVendidos($promedioVendido)->get()->sortByDesc('quantity');

        return $this->sendReponse($this->arrayProducts($masVendidos), 200);
    }

    public function lessSold(){
        $promedioVendido = OrdersProduct::all()->average('quantity');
        $menosVendidos = OrdersProduct::MenosVendidos($promedioVendido)->get()->sortBy('quantity');

        return $this->sendReponse($this->arrayProducts($menosVendidos), 200);
    }

    private function arrayProducts($vendidos){
        $products = [];
        foreach($vendidos as $productVendido){
            array_push($products, [
                 'id'       =>  $productVendido->product->id,
                 'name'     =>  $productVendido->product->name,
                 'quantity' =>  $productVendido->quantity
            ]);
        }

        return $products;
    }
}
