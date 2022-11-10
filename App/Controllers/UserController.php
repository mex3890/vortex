<?php

namespace App\Controllers;

use App\Services\CreateUser;
use Core\Abstractions\Controller;
use Core\Helpers\Hash;
use Core\Helpers\Uri;
use Core\Request\Request;
use Core\Request\Validation;
use SmartyException;

class UserController extends Controller
{
    public static array $rules = [
        'email' => [
            'required',
            'email'
        ],
        'password' => [
            'required',
            ['string', 10, 50]
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
            'string.max' => 'Maximum characters is 50'
        ]
    ];

    public static function index()
    {

    }

    public static function create(Request $request)
    {
        Validation::check($request->attributes(), self::$rules, self::$feedback);
        $attributes = $request->attributes();

        $user = new CreateUser($attributes['email'], Hash::hashPassword($attributes['password']));

        redirect('/');
    }

    public static function delete()
    {

    }

    public static function show()
    {

    }

    public static function edit()
    {

    }

    public static function update()
    {

    }
}
