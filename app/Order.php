<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'priority','address','user'
    ];
    
    public function orderProducts(){
        return $this->hasMany(\App\OrdersProduct::class, 'order_id');
    }
}
