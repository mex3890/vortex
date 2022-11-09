<?php

use App\Controllers\UserController;
use Core\Helpers\Uri;
use Core\Routes\Route;

$route = new Route();

$route->get('/', function () {
    view('vortex.galaxy.tpl', [
        'vortex_logo' => Uri::getPublicPath('/img/vortex.png'),
        'coin_logo' => Uri::getPublicPath('img/icons/coin.png'),
        'github_logo' => Uri::getPublicPath('img/icons/github.png'),
        'discord_logo' => Uri::getPublicPath('img/icons/discord.png'),
        'gear_logo' => Uri::getPublicPath('img/icons/gear.png'),
        'meta_icon' => Uri::getPublicPath('img/icons/meta.png'),
        'twitter_icon' => Uri::getPublicPath('img/icons/twitter.png'),
        'instagram_icon' => Uri::getPublicPath('img/icons/instagram.png'),
        'mail_icon' => Uri::getPublicPath('img/icons/mail.png'),
        'youtube_icon' => Uri::getPublicPath('img/icons/youtube.png'),
    ]);
});

$route->get('/login', function () {
    view('login.galaxy.tpl');
});

$route->post('/login', [UserController::class, 'create']);

$route->default('/404', function () {
    view('404.galaxy.tpl', [
        'vortex_logo_url' => Uri::getPublicPath('/img/vortex.png'),
        'home_url' => Uri::getRootPath()
    ]);
});
