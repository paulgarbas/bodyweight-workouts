<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class WorkoutRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'title' => 'required',
            'exercise_title' => 'required',
            'reps_number' => 'required',
            'sets_number' => 'required',
            'pause_between_sets' => 'required',
            'pause_between_exercises' => 'required'            
        ];
    }

    public function messages() 
    {
        return [
            'title.required' => 'Please enter a name of the workout',
            'exercise_title.required' => 'Please choose minimum one exercise',
            'reps_number.required' => 'Please enter a number of reps',
            'sets_number.required' => 'Please enter a number of sets',
            'pause_between_sets.required' => 'Please fill in the pause between sets column',
            'pause_between_exercises.required' => 'Please fill in the pause between exercises column'            
        ];
    }
}
