@extends('layout.master')

@section('content')
    <div class="container workouts">
        <div class="row">
            <div class="col-sm">
                <h1>Create your own workout routine</h1>

                <form action="{{ route('add.workout') }}" method="POST">
                    @csrf
                    <div class="form-group">
                        <label for="formControlInput">Workout Name</label>
                        <input type="text" class="form-control" id="formControlInput" name="title" value="" placeholder="">
                    </div>
                    
                    <div class="form-group">
                        <div class="form-group-title">Add Exercises To Your Workout</div>
                        <ul class="exercises-list">
                            @foreach($exercises as $exercise)
                                <li>{{ $exercise->title }}</li>
                            @endforeach
                        </ul>
                    </div>

                    <div id="your-exercises"></div>

                    <div class="form-group form-group-numbers">
                        <div class="form-group-numbers-inner">
                            <label for="formControlInput">Number of Sets</label>
                            <input type="text" class="" id="formControlInput" name="sets_number" value="4">
                            <div>sets</div>
                        </div>
                        <div class="form-group-numbers-inner">
                            <label for="formControlInput">Pause Between Sets</label>
                            <input type="text" class="" id="formControlInput" name="pause_between_sets" value="90">
                            <div>seconds</div>  
                        </div>
                        <div class="form-group-numbers-inner">
                            <label for="formControlInput">Pause Between Exercises</label>
                            <input type="text" class="" id="formControlInput" name="pause_between_exercises" value="30">
                            <div>seconds</div>
                        </div>
                    </div>

                    <div class="form-group button">
                        <button type="submit" class="btn btn-default btn-lg">Save Workout</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
@endsection
