<?php

namespace App\Controllers;

use App\Services\CreateUser;
use App\Services\VerifyUser;
use Core\Abstractions\Controller;
use Core\Helpers\Hash;
use Core\Request\Request;
use Core\Request\Session;
use Core\Request\Validation;
use JetBrains\PhpStorm\NoReturn;

class UserController extends Controller
{
    public static array $rules = [
        'email' => [
            'required',
            'email',
            ['unique', 'users', 'email']
        ],
        'password' => [
            'required',
            ['password', [
                'number',
                'upper-case',
                'lower-case',
                'special-character'
            ]]
        ],
        'name' => [
            'required',
            ['string', 10, 255]
        ]
    ];

    public static array $feedback = [
        'email' => [
            'required' => 'The email is required',
            'email' => 'Enter with a valid email',
            'unique' => 'The email is already registered'
        ],
        'password' => [
            'required' => 'The password is required',
            'password.upper-case' => 'Need upper case character',
            'password.lower-case' => 'Need lower case',
            'password.number' => 'Need number',
            'password.special-character' => 'Need special character',
        ],
        'name' => [
            'required' => 'The name is required',
            'string' => 'The name needs to be a string',
            'string.min' => 'Name min characters is 10',
            'string.max' => 'Name max characters is 255',
        ]
    ];

    #[NoReturn] public static function login(Request $request): void
    {
        $attributes = $request->attributes();

        if (VerifyUser::verifyUserByCredentials($attributes['email'], $attributes['password'])) {
            redirect('/');
        }

        back(null, ['Login' => "Credentials don't correspond to any account"]);
    }

    #[NoReturn] public static function register(Request $request)
    {
        Validation::check($request->attributes(), self::$rules, self::$feedback);

        $attributes = $request->attributes();

        $user = new CreateUser(
            $attributes['name'],
            $attributes['email'],
            Hash::hashPassword($attributes['password'])
        );

        if (!empty($user)) {
            redirect('/');
        }

        redirect('/404');
    }
}
