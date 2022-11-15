<?php

namespace App\Seeds;

use Core\Abstractions\Seeder;
use Core\Database\Seed;
use Core\Helpers\DateTime;
use Core\Helpers\Hash;

class UserSeed extends Seeder
{
    public static function handler(): void
    {
        Seed::run('users', [
            'email' => 'user@email.com',
            'password' => Hash::hashPassword('User123@'),
            'created_at' => DateTime::currentDate()
        ]);
    }
}
