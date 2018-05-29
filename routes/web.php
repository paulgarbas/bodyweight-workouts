<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/', 'MuscleController@index')->name('muscles');

Route::get('/{muscle}/exercises', 'MuscleController@showExercisesByMuscleGroup')->name('muscle.exercises');

Route::get('/createWorkout', 'ExerciseController@index')->name('user.create.workout'); 

Route::post('/savedWorkouts', 'WorkoutController@store')->name('add.workout');

Route::get('/savedWorkouts', 'WorkoutController@showWorkoutsForUser')->name('user.all.workouts');

Route::get('/savedWorkouts/{workout}', 'WorkoutController@show')->name('user.single.workout');

