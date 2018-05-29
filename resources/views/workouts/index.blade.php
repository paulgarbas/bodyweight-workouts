@extends('layout.master')

@section('content')
    <div class="container workouts">
        <div class="row">
            <div class="col-sm">      
                <h1>Your Saved Workouts</h1>     
                <ul class="">
                    @foreach($workouts as $workout)
                        <li class="your-workouts">
                            <a href="{{ route('user.single.workout', $workout) }}">
                                <div class="your-workouts-title">{{ $workout->title }}</div>
                                <div class="your-workouts-settings">
                                    <div class="">Sets {{ $workout->sets_number }}</div>
                                    <div class="">Pause between sets {{ $workout->pause_between_sets }}</div>
                                    <div class="">Pause between exercises {{ $workout->pause_between_exercises }}</div> 
                                </div>
                            </a>
                        </li>
                    @endforeach
                </ul>
            </div>
        </div>
    </div>
@endsection