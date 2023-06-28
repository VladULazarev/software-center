<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\User;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Event>
 */
class EventFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'user_id' => User::all()->random()->id,
            'title' => fake()->unique()->sentence(),
            'description' => fake()->text(),
            'participants' => "a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:5;}"
        ];
    }
}
