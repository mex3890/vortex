<?php

use App\Controllers\UserController;
use Core\Helpers\Uri;
use Core\Routes\Route;

$route = new Route();

$route->get('/', function () {
    view('vortex.galaxy.tpl');
});
//
//$route->middleware([AuthMiddleware::class, Test::class])->get('/login', function () {
//    view('login.galaxy.tpl', ['home_url' => Uri::getRootPath()]);
//});

$route->get('/login', function () {
    view('login.galaxy.tpl', ['home_url' => Uri::getRootPath()]);
});

$route->get('/register', function () {
    view('register.galaxy.tpl', ['home_url' => Uri::getRootPath()]);
});

$route->post('/register', [UserController::class, 'register']);

$route->post('/login', [UserController::class, 'login']);

$route->default('/404', function () {
    view('404.galaxy.tpl', ['home_url' => Uri::getRootPath()]);
});
