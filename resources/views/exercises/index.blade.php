@extends('layout.master')

@section('content')
    <div class="container exercises">
        @foreach($muscle->exercises as $exercise)
            <div class="row">
                <div class="col-md-7">
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/{{ $exercise->video }}?rel=0" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                </div>
                <div class="col-md-5">
                    <h3>{{ $exercise->title }}</h3>
                    <p>{{ $exercise->description }}</p>
                </div>
            </div>
        @endforeach
    </div>
@endsection