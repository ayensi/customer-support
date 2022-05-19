<?php

namespace Database\Factories;

use App\Http\Constants\Status;
use App\Models\Department;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Arr;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Ticket>
 */
class TicketFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'subject' => $this->faker->word,
            'message' => $this->faker->realText,
            'status' => $this->faker->randomElement(['closed','open','waitingCustomer','resolved']),
            'department_id' => Department::inRandomOrder()->first()->id,
            'user_id' => User::inRandomOrder()->first()->id,
        ];
    }
}
