<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class ProductFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'nombre' => $this->faker->unique()->name(),
            'descripcion' => $this->faker->sentence(20),
            'precio' => $this->faker->randomFloat(NULL, 0, 100)
        ];
    }
}
