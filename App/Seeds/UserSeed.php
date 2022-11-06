<?php

namespace App\Seeds;

use Core\Abstractions\Seeder;
use Core\Database\Seed;
use Core\Helpers\DateTime;

class UserSeed extends Seeder
{
    public static function handler(): void
    {
        Seed::run('users', [
            'email' => 'developer@vortex.com',
            'password' => serialize('password'),
            'created_at' => DateTime::currentDate()
        ]);
    }
}
