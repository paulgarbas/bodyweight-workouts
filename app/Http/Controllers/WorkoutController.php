<?php

namespace App\Http\Controllers;

use App\Workout;
use App\WorkoutExercise;
use Illuminate\Http\Request;
use App\Http\Requests\WorkoutRequest;
use Illuminate\Support\Facades\Auth;

class WorkoutController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(WorkoutRequest $request)
    {   
        // Insert workout into database
        $workout = Workout::create([
            'title' => $request->input('title'),
            'user_id' => Auth::user()->id,
            'sets_number' => $request->input('sets_number'),
            'pause_between_sets' => $request->input('pause_between_sets'),
            'pause_between_exercises' => $request->input('pause_between_exercises')            
        ]);
        
        // Insert workout's exercises into database 
        $input = $request->all();
        
        for ($i = 0; $i < count($input['exercise_title']); $i++) {
            $workoutExercise = new WorkoutExercise;
            $workoutExercise->workout_id = $workout->id;
            $workoutExercise->exercise_title = $request->input('exercise_title')[$i];    
            $workoutExercise->reps_number = $request->input('reps_number')[$i];     
            $workoutExercise->save();            
        }  

        return redirect()->back()->with('message', 'Workout created successfully');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Workout  $workout
     * @return \Illuminate\Http\Response
     */
    public function show(Workout $workout)
    {
        return view('workouts.single', compact('workout'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Workout  $workout
     * @return \Illuminate\Http\Response
     */
    public function edit(Workout $workout)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Workout  $workout
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Workout $workout)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Workout  $workout
     * @return \Illuminate\Http\Response
     */
    public function destroy(Workout $workout)
    {
        $workout->delete();
        return redirect()->back()->with('message', 'Workout deleted successfully');
    }

    public function showWorkoutsForUser() 
    {
        $workouts = Workout::where('user_id', Auth::user()->id)->latest()->get();
        return view('workouts.index', compact('workouts'));
    }

    public function workoutsAjax() {
        $workouts = Workout::where('user_id', Auth::user()->id)->latest()->get();
        return response()->json(['workouts' => $workouts]); 
    }
}
