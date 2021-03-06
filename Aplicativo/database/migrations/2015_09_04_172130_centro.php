<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class Centro extends Migration {

	public function up()
	{
		Schema::create('centroM', function(Blueprint $table)
        {
            $table->increments('id');
            $table->string('Descripcion');
 		 	$table->string('Direccion');
 		 	$table->integer('FK_Regional')->unsigned();
 		 	$table->foreign('FK_Regional')->references('id')->on('regionalM');
            $table->timestamps(); //basicamente hara dos atributos: create_at update_up
        });
	}

	public function down()
	{
		Schema::drop('centroM');
	}

}

