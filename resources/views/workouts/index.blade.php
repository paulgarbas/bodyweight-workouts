@extends('layout.master')

@section('content')
    <div class="container workouts">
        <div class="row">
            <div class="col-sm">      
                <h1>Your Saved Workouts</h1> 
                
                <div class="row">
                    <div class="col-sm-12">
                        @if(session('message'))
                            <div class="alert alert-danger text-center mt-5">
                                {{ session('message') }}
                            </div>
                        @endif
                    </div>
                </div>
                
                @if(count($workouts) > 0)
                    <div class="col-sm form-group search-workouts">
                        <a href="" class="btn btn-default" id="search-btn">Search workout</a>
                        <input type="search" class="form-control" id="search-input" placeholder="Search">
                    </div>
                    
                    <ul class="your-workouts-outer">
                        @foreach($workouts as $workout)
                            <li class="your-workouts">
                                <a href="{{ route('user.single.workout', $workout) }}">
                                    <div class="row your-workouts-row">
                                        <div class="col-md-7">
                                            <div class="your-workouts-title">{{ $workout->title }}</div>
                                        </div>
                                        <div class="col-md-5">
                                            <div class="row your-workouts-settings">
                                                <div class="col-md-10">
                                                    <div class="your-workouts-info">
                                                        <div class="">Sets {{ $workout->sets_number }}</div>
                                                        <div class="">Pause between sets {{ $workout->pause_between_sets }}</div>
                                                        <div class="">Pause between exercises {{ $workout->pause_between_exercises }}</div> 
                                                    </div>
                                                </div>
                                                <div class="col-md-2">
                                                    <form action="{{ route('user.workout.delete', $workout) }}" method="POST">
                                                        @method('DELETE')
                                                        @csrf
                                                        <button type="submit" class="btn-delete-workout"><i class="fas fa-trash-alt"></i></button>
                                                    </form>
                                                </div>                                            
                                            </div>
                                        </div>                                    
                                    </div>
                                </a>
                            </li>
                        @endforeach
                    </ul>
                    
                    <div id="search-results"></div>

                @else
                    <h3 class="text-center mt-5">You don't have any saved workouts</h3>
                    <div class="text-center mt-5">
                        <a href="{{ route('user.create.workout') }}" class="btn btn-default">Create workout</a>
                    </div>
                @endif    
            </div>
        </div>
    </div>
@endsection