<?php

use Dotenv\Dotenv;

require_once __DIR__ . '/../vendor/autoload.php';

require_once '../vendor/vortex-framework/vortex-framework/Core/Core/global_functions.php';

$env = Dotenv::createImmutable(__DIR__ . '/../');
$env->load();

date_default_timezone_set($_ENV['TIME_ZONE']);

require __DIR__ . '/../Routes/routes.php';



