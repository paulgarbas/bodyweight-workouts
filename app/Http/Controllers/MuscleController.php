<?php

namespace App\Http\Controllers;

use App\Muscle;
use Illuminate\Http\Request;

class MuscleController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $muscles = Muscle::all();
        return view('welcome', compact('muscles'));
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
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Muscle  $muscle
     * @return \Illuminate\Http\Response
     */
    public function show(Muscle $muscle)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Muscle  $muscle
     * @return \Illuminate\Http\Response
     */
    public function edit(Muscle $muscle)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Muscle  $muscle
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Muscle $muscle)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Muscle  $muscle
     * @return \Illuminate\Http\Response
     */
    public function destroy(Muscle $muscle)
    {
        //
    }

    public function showExercisesByMuscleGroup(Muscle $muscle) 
    {
        return view('exercises.index', compact('muscle'));
    }
}
