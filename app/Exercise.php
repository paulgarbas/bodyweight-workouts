<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Exercise extends Model
{
    public function muscle() 
    {
        return $this->belongsTo(Muscle::class);
    }
}
