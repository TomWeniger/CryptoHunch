<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\User;

class BlogPostFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'author_id' => $this->faker->sentence, //Generates a fake sentence
            'blog' => $this->faker->paragraph(30), //generates fake 30 paragraphs
            'coin_id' => User::factory() //Generates a User from factory and extracts id
        ];
    }
}
