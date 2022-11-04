<?php

use Core\Helpers\Uri;
use Core\Routes\Route;

$route = new Route();

$route->get('/', function () {
    view('vortex.galaxy.tpl');
});

$route->default('/404', function () {
    view('404.galaxy.tpl', [
        'vortex_logo_url' => Uri::getPublicPath('/img/vortex.png'),
        'home_url' => Uri::getRootPath()
    ]);
});
