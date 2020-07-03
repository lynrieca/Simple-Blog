<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Posts;
use Faker\Generator as Faker;

$factory->define(Posts::class, function (Faker $faker) {
    return [
        'title' => $faker->catchPhrase,
        'desc'  => $faker->realText,
        'user_id' => $faker->randomDigit
    ];
});
