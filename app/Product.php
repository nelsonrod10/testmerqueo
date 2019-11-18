<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'id','name'
    ];
    
    public function inventory(){
        return $this->hasOne(\App\Inventory::class);
    }
    
    public function providers(){
        return $this->hasMany(\App\ProvidersProduct::class);
    }
}
