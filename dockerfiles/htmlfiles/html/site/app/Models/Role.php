<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades;

class Role extends Model
{
     protected $fillable = ['user_role','user_name'];
}
