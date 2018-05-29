@extends('layout.master')

@section('content')
<div class="container workouts">
        <div class="row">
            <div class="col-sm">   
                <ul>
                    @foreach($workout->exercises as $exercise)
                        <li>{{ $exercise->exercise_title }}</li>
                    @endforeach
                </ul>   
            </div>
        </div>
    </div>
@endsection