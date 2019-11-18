<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProvidersProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('providers_products', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger("provider_id")->unsigned()->required();
            $table->bigInteger("product_id")->unsigned()->required();
            $table->foreign('provider_id')->references('id')->on('providers')->onDelete('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('providers_products');
    }
}
