@extends('layout.master')

@section('content')
    <div class="container workouts">
        <div class="row">
            <div class="col-sm">
                <h1>Create your own workout routine</h1>

                <div class="row">
                    <div class="col-sm-12">
                        @if(session('message'))
                            <div class="alert alert-success text-center mt-5">
                                {{ session('message') }}
                            </div>
                        @endif
                    </div>
                </div>

                <form action="{{ route('add.workout') }}" method="POST">
                    @csrf
                    <div class="form-group">
                        <label for="formControlInput">Workout Name</label>
                        <input type="text" class="form-control" id="formControlInput" name="title" value="" placeholder="">
                    </div>
                    @if ($errors->has('title'))
                        <div class="alert alert-danger mt-12 col-sm-12">
                            <b>{{$errors->first('title')}}</b>
                        </div>
                    @endif
                    
                    <div class="form-group">
                        <div class="form-group-title">Add Exercises To Your Workout</div>
                        <ul class="exercises-list">
                            @foreach($exercises as $exercise)
                                <li>{{ $exercise->title }}</li>
                            @endforeach
                        </ul>
                    </div>

                    <div id="your-exercises"></div>
                    @if ($errors->has('exercise_title'))
                        <div class="alert alert-danger mt-12 col-sm-12">
                            <b>{{$errors->first('exercise_title')}}</b>
                        </div>
                    @endif

                    @if ($errors->has('reps_number'))
                        <div class="alert alert-danger">
                            <b>{{$errors->first('reps_number')}}</b>
                        </div>
                    @endif

                    <div class="row form-group form-group-numbers">
                        <div class="col-lg-4 form-group-numbers-inner">
                            <label for="numberOfSets">Number of Sets</label>
                            <input type="text" class="" id="numberOfSets" name="sets_number" value="4">
                            <div>sets</div>
                        </div>
                        <div class="col-lg-4 form-group-numbers-inner">
                            <label for="pauseBetweenSets">Pause Between Sets</label>
                            <input type="text" class="" id="pauseBetweenSets" name="pause_between_sets" value="90">
                            <div>seconds</div>  
                        </div>
                        
                        <div class="col-lg-4 form-group-numbers-inner">
                            <label for="pauseBetweenExercises">Pause Between Exercises</label>
                            <input type="text" class="" id="pauseBetweenExercises" name="pause_between_exercises" value="30">
                            <div>seconds</div>
                        </div>
                    </div>
            
                    <div class="row">
                        <div class="col-sm-12">
                            @if ($errors->has('sets_number'))
                                <div class="alert alert-danger">
                                    <b>{{$errors->first('sets_number')}}</b>
                                </div>
                            @endif
            
                            @if ($errors->has('pause_between_sets'))
                                <div class="alert alert-danger">
                                    <b>{{$errors->first('pause_between_sets')}}</b>
                                </div>
                            @endif
            
                            @if ($errors->has('pause_between_exercises'))
                                <div class="alert alert-danger">
                                    <b>{{$errors->first('pause_between_exercises')}}</b>
                                </div>
                            @endif
            
                        </div>
                    </div>

                    <div class="form-group button">
                        <button type="submit" class="btn btn-default btn-lg save-workout-btn">Save Workout</button>
                    </div>
                </form>
            </div>
        </div>

    </div>
@endsection
