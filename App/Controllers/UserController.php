<?php

namespace App\Controllers;

use Core\Abstractions\Controller;
use Core\Request\Request;
use Core\Request\Validation;

class UserController extends Controller
{
    public static array $rules = [
        'email' => [
            'required',
            'email',
            ['string', 10, 20]
        ],
        'password' => ['bool']
    ];

    public static array $feedback = [
        'email' => [
            'required' => 'This camp is required',
            'email' => 'This email is invalid',
            'string' => 'String feedback',
            'string.min' => 'Min deu ko',
            'string.max' => 'Max deu ko'
        ],
        'password' => [
            'bool' => 'The password is a bool camp'
        ]
    ];

    public static function index()
    {

    }

    public static function create(Request $request)
    {
        Validation::check($request->attributes(), self::$rules, self::$feedback);
        echo $request->attributes()['email'] . ' Logged';
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
