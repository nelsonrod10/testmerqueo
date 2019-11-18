<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

/*Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});*/

Route::prefix('orders')->group(function(){
    Route::get('availables-products-inventory','Orders\ProductsAvailablesController@inventory');
    Route::get('availables-products-providers','Orders\ProductsAvailablesController@providers');
    Route::get('/{id}/products-inventory-providers', 'Orders\ProductsOrdersController@delivery');
});

Route::prefix('products')->group(function(){
   Route::get('best-sellers','Products\ProductsController@bestSellers'); 
   Route::get('less-sold','Products\ProductsController@lessSold'); 
});

Route::prefix('inventory')->group(function(){
   Route::get('next-day','Inventory\InventoryController@nextDay'); 
});