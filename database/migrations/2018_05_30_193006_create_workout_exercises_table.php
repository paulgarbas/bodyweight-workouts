<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateWorkoutExercisesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('workout_exercises', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('workout_id')->unsigned()->index();
            $table->text('exercise_title');
            $table->integer('reps_number');            
            $table->timestamps();
            $table->foreign('workout_id')->references('id')->on('workouts')->onDelete('cascade'); 
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('workout_exercises');
    }
}
