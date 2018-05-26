<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Muscle extends Model
{
    public function getRouteKeyName() {
        return 'title';
    }

    public function exercises() 
    {
        return $this->hasMany(Exercise::class);
    }
}
