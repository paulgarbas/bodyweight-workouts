"use strict";

$(document).ready(function(){
    let quantityExercises = 0;
    let firstExercise = true;
    let exerciseId = 0;

    let reps = $('.reps').val();
    
    // Add exercise
    $('.exercises-list').click(function(event) {
        if (event.target !== event.currentTarget) {
            let exercise = $(event.target).text();
            exerciseId++;
    
            // Adds 'ul' only for first click
            if (firstExercise) {
                $('#your-exercises').html(
                    `<div class="form-group form-group-your-exercises">
                        <div class="form-group-title">Your Exercises</div>
                        <ul class="your-exercises">                            
                        </ul>
                    </div>`
                );
                firstExercise = false;
            }

            $('.your-exercises').append(
                `<li>
                    <input type="text" name="exercise_title[]" value="${exercise}" readonly>
                    <div class="your-exercises-edit">
                        <input type="text" name="reps_number[]" value="12" class="reps">
                        <span>reps</span>
                        <span class="remove-exercise">&times;</span>
                    </div>
                </li>`
            );   
            
            quantityExercises++;   
        }     
        event.stopPropagation();
    });
    
    // Remove exercise
    $('#your-exercises').on('click', '.remove-exercise', function() {
        // Removes 'li'
        $(this).closest('li').remove(); 
        quantityExercises--;        
        
        // Removes 'ul'
        if (quantityExercises === 0) {
            $('.form-group-your-exercises').remove(); 
            firstExercise = true;            
        }
    });

    // Fills in correct numbers when 'create workout' button is clicked
    $('.save-workout-btn').click(function() {

        if ($('.reps').val() === "" || isNaN($('.reps').val()) || $('.reps').val() < 1) {
            $('.reps').val(12);
        }

        if ($('#numberOfSets').val() === "" || isNaN($('#numberOfSets').val()) || $('#numberOfSets').val() < 1) {
            $('#numberOfSets').val(4);
        }
        if ($('#pauseBetweenSets').val() === "" || isNaN($('#pauseBetweenSets').val()) ||
            $('#pauseBetweenSets').val() < 0) {
            $('#pauseBetweenSets').val(90);
        }
        if ($('#pauseBetweenExercises').val() === "" || isNaN($('#pauseBetweenExercises').val()) ||
            $('#pauseBetweenExercises').val() < 0) {
            $('#pauseBetweenExercises').val(30);
        }
    });

    // Search workouts button
    $('#search-btn').click(function() {
        event.preventDefault();
        let searchWorkout = $('#search-input').val();
        $('.your-workouts-outer').hide();

        $.ajax({
            type: "GET",
            url: "/workoutsAjax",
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            dataType: 'json',
            success: function(data) {
                let filteredWorkouts = data.workouts.filter(function(workout) {
                    let result = workout.title.indexOf(searchWorkout); 
                    if (result === -1) {
                        return false;
                    }
                    return true;
                });
                // console.log(filteredWorkouts); 


                // $.ajax({
                //     type: "POST",
                //     headers: {
                //     'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                //     },
                //     url: "/filteredWorkouts",
                //     data: JSON.stringify(filteredWorkouts),
                //     // data: {"name": "Paulius"},
                //     // data: {'vardas': 'Paulius'},
                //     contentType: "json",
                //     // contentType: "json",
                //     // dataType: "json",
                //     success: function(data) { 
                //         console.log("Success: ", data);
                //         // console.log(filteredWorkouts);
                //     },
                //     error: function(data) {
                //         console.log("Error: ", data);
                //     }
                // });
                $('#search-results').html('<ul class="your-workouts-outer"></ul>');
                
                filteredWorkouts.forEach(function(workout) {
                    $('.your-workouts-outer').append(
                        `<li class="your-workouts">
                            <a href="#">
                                <div class="row your-workouts-row">
                                    <div class="col-md-7">
                                        <div class="your-workouts-title">${workout.title}</div>
                                    </div>
                                    <div class="col-md-5">
                                        <div class="row your-workouts-settings">
                                            <div class="col-md-10">
                                                <div class="your-workouts-info">
                                                    <div class="">Sets ${workout.sets_number}</div>
                                                    <div class="">Pause between sets ${workout.pause_between_sets}</div>
                                                    <div class="">Pause between exercises ${workout.pause_between_exercises}</div> 
                                                </div>
                                            </div>                                  
                                        </div>
                                    </div>                                    
                                </div>
                            </a>
                        </li>`
                    );
                });
            },
            error: function(data) {
                console.log('Error ', data);
            }
        });
    });

});

