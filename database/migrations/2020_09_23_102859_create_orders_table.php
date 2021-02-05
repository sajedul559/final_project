<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;


class CreateOrdersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('orders', function (Blueprint $table) {
            $table->increments('id');
            $table->string('f_username');
            $table->string('c_username');
            $table->string('crop_id');
            $table->string('name');
            $table->string('email');
            $table->string('phone');
            $table->double('amount');
            $table->longText('address');
            $table->longText('division');
            $table->longText('zip');
            $table->string('status');
            $table->string('transaction_id');
            $table->string('currency');
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
        Schema::dropIfExists('orders');
    }
}