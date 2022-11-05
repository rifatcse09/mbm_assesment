<?php

namespace Database\Factories;

use App\Models\Order;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;
use App\Models\User;

class OrderFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Order::class;
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'invoice_id' => $this->faker->randomNumber($nbDigits = NULL),
            'customer_name' => $this->faker->name(),
            'customer_email' => $this->faker->unique()->safeEmail(),
            'customer_phone' => $this->faker->phoneNumber(),
            'customer_street' => "609",
            'customer_city' => $this->faker->city(),
            'customer_state' => "Dahak",
            'customer_zipcode' => $this->faker->postcode(),
            'customer_country' => "BGD",
            'product_name' => $this->faker->name(),
            'product_details' => "Test",
            'payment_url' => "",
            'amount' => $this->faker->randomDigit,
            'status' => $this->faker->randomElement(
                [0, 1]
            ),
        ];
    }

    /**
     * Indicate that the model's email address should be unverified.
     *
     * @return \Illuminate\Database\Eloquent\Factories\Factory
     */
    public function unverified()
    {
        return $this->state(function (array $attributes) {
            return [];
        });
    }
}
