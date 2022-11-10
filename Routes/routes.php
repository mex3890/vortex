<?php

use App\Controllers\UserController;
use Core\Helpers\Uri;
use Core\Routes\Route;

$route = new Route();

$route->get('/', function () {
    view('vortex.galaxy.tpl');
});

$route->get('/login', function () {
    view('login.galaxy.tpl', ['home_url' => Uri::getRootPath()]);
});

$route->post('/login', [UserController::class, 'create']);

$route->default('/404', function () {
    view('404.galaxy.tpl', ['home_url' => Uri::getRootPath()]);
});
