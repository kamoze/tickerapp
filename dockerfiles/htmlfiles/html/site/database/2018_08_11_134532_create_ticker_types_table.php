<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTickerTypesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ticker_types', function (Blueprint $table) {
            $table->increments('id');
            $table->string('ticker_name');
            $table->string('ticker_direction');
            $table->string('ticker_fontsize');
            $table->string('ticker_background_color');
            $table->string('ticker_text_color');
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
        Schema::dropIfExists('ticker_types');
    }
}
