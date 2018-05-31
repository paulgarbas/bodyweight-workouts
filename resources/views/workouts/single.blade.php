@extends('layout.master')

@section('content')
<div class="container workouts">
        <div class="row">
            <div class="col-sm">   
                <div class="card text-center single-workout">
                    <div class="card-header">
                        <h5 class="card-title">{{ $workout->title }}</h5>
                        <div class="single-workout-sets">{{ $workout->sets_number }} <span class="number-uppercase">sets</span></div>
                        <div class="single-workout-pause">Rest between exercises {{ $workout->pause_between_exercises }} seconds</div>
                    </div>
                    <div class="card-body single-workout-information">
                        @foreach($workout->exercises as $exercise)
                            <div class="row single-workout-row">
                                <div class="col-md-3 single-workout-reps">
                                    <div class="reps-number">{{ $exercise->reps_number }}</div> 
                                    <div class="reps">reps</div>
                                </div>
                                <div class="col-md-9 card-text single-workout-exercise">{{ $exercise->exercise_title }}</div>                        
                            </div>
                        @endforeach
                    </div>
                    <div class="card-footer">
                        <div class="single-workout-rest-sets">Rest between sets {{ $workout->pause_between_sets }} seconds</div>                    
                        {{-- <a href="#" class="btn btn-default">Start workout</a> --}}
                        <div class="single-workout-created">
                            <div>Created at</div> 
                            <div>{{ $workout->created_at }}</div>
                        </div>
                    </div>
                </div>           
            </div>
        </div>
    </div>
@endsection
