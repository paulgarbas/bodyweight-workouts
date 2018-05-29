<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Workout extends Model
{
    protected $fillable = ['title', 'user_id', 'sets_number', 'pause_between_sets', 'pause_between_exercises'];

    public function user() 
    {
        return $this->belongsTo(User::class);
    }

    public function exercises()
    {
        return $this->hasMany(WorkoutExercise::class);
    }

}
