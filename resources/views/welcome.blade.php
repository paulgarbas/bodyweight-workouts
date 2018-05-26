@extends('layout.master')

@section('content')
    
    <!-- Intro Header -->
    <header class="masthead">
        <div class="intro-body">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 mx-auto">
                        <h1 class="brand-heading">Bodyweight Workouts</h1>
                        <p class="intro-text">Staying fit should be fun. Are you stuck doing the same workouts all the time? Here you can create your own custom bodyweight workout routines everyday.</p>
                        <a href="#about" class="btn btn-circle js-scroll-trigger">
                            <i class="fas fa-angle-double-down animated"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </header>
    
    <!-- About Section -->
    <section id="about" class="content-section text-center">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 mx-auto">
                    <h2>About Bodyweight Training</h2>
                    <p>Bodyweight exercises are strength training exercises that do not require free weights or machines as the individual's own weight provides resistance against gravity.</p> 
                    <p>It is recognised that bodyweight training can enhance a range of biomotor abilities including strength, power, endurance, speed, flexibility, coordination and balance.</p>
                    <p>Bodyweight exercises are the ideal choice for individuals who are interested in fitness but do not have access to equipment, because they do not require weights or specialised machinery.</p>
                    <p>Large part of these exercises work the entire body. This develops you coordination and burns more calories considering that more muscles need more energy that your body burns.</p>
                    <p>The movements you do are natural ones that are far better for you joints.</p>
                    <p>It is not boring. You can combine everything you want and increase the resistance in unlimited ways.</p>
                    <a href="#exercises" class="btn btn-circle js-scroll-trigger">
                        <i class="fas fa-angle-double-down animated"></i>
                    </a>
                </div>
            </div>
        </div>
    </section>

    <!-- Exercises Section -->
    <section id="exercises" class="exercises-section content-section text-center">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 mx-auto">
                    <h2>Exercises for major muscle groups</h2>
                    <p>Here you can see exercises which are categorized by the muscles which they affect.</p>
                    @foreach($muscles as $muscle)
                        <a href="{{ route('muscle.exercises', $muscle) }}" class="btn btn-default btn-lg">{{ $muscle->title }}</a>
                    @endforeach
                </div>
            </div>
        </div>
    </section>
@endsection