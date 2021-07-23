<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateUsersTable extends Migration {

	public function up()
	{
		Schema::create('users', function(Blueprint $table) {
			$table->increments('id');
			$table->timestamps();
			$table->string('name',100)->unique();
			$table->string('email',100)->unique();
			$table->string('password',100);
			$table->rememberToken();
			$table->enum('role', array('user', 'redac', 'admin'));
			$table->boolean('valid')->default(false);
		});
	}

	public function down()
	{
		Schema::drop('users');
	}
}
