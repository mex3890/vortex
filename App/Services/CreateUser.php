<?php

namespace App\Services;

use App\Models\User;
use Core\Abstractions\Service;
use Core\Helpers\DateTime;

class CreateUser extends Service
{
    public function __construct(string $name, string $email, string $password)
    {
        $this->createUser($name, $email, $password);
    }

    private function createUser(string $name, string $email, string $password): bool
    {
        $user = new User([
            'name' => $name,
            'email' => $email,
            'password' => $password,
            'created_at' => DateTime::currentDateTime()
        ]);

        return $user->create();
    }
}
