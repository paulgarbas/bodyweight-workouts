<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class WorkoutExercise extends Model
{
    protected $fillable = ['workout_id', 'exercise_title', 'reps_number'];

    public function exercise()
    {
        return $this->belongsTo(Exercise::class);
    }
}
