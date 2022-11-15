<?php

namespace App\Controllers;

use App\Services\VerifyUser;
use Core\Abstractions\Controller;
use Core\Request\Request;
use Core\Request\Validation;
use JetBrains\PhpStorm\NoReturn;

class UserController extends Controller
{
    public static array $rules = [
        'email' => [
            'required',
            'email'
        ],
        'password' => [
            'required',
            ['string', 5, 50],
            ['password', [
                'number',
                'upper-case',
                'lower-case',
                'special-character'
            ]]
        ]
    ];

    public static array $feedback = [
        'email' => [
            'required' => 'The email is required',
            'email' => 'Enter with a valid email'
        ],
        'password' => [
            'required' => 'The password is required',
            'string.min' => 'Minimum characters is 10',
            'string.max' => 'Maximum characters is 50',
            'password.upper-case' => 'Need upper case character',
            'password.lower-case' => 'Need lower case',
            'password.number' => 'Need number',
            'password.special-character' => 'Need special character',
        ]
    ];

    #[NoReturn] public static function login(Request $request): void
    {
        Validation::check($request->attributes(), self::$rules, self::$feedback);
        $attributes = $request->attributes();

        if (VerifyUser::verifyUserByCredentials($attributes['email'], $attributes['password'])) {
            redirect('/');
        }

        redirect('/404');
    }
}
