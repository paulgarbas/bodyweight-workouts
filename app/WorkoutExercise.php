<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class WorkoutExercise extends Model
{
    protected $fillable = ['workout_id', 'exercise_title', 'reps_number'];

    public function workout()
    {
        return $this->belongsTo(Workout::class, 'workout_id');
    }
}
