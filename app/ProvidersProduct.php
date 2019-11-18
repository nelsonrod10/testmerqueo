<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ProvidersProduct extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'provider_id', 'product_id',
    ];

    public function provider(){
        return $this->belongsTo(\App\Provider::class,'provider_id');
    }
    
    public function product(){
        return $this->belongsTo(\App\Product::class,'product_id');
    }
}
