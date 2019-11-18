<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class OrdersProduct extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'order_id','product_id','quantity', 
    ];
    
    public function order(){
        return $this->belongsTo(\App\Order::class,'order_id');
    }
    
    public function product(){
        return $this->belongsTo(\App\Product::class,'product_id');
    }
    
    public function scopeMasVendidos($query,$average){
        return $query->where('quantity','>', $average);
    }
    
    public function scopeMenosVendidos($query,$average){
        return $query->where('quantity','<', $average);
    }
}
