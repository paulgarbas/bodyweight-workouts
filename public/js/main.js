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

});

