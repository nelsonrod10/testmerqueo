<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Inventory extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'product_id','quantity','date'
    ];
    
    public function products(){
        return $this->hasMany(\App\Product::class);
    }
}
