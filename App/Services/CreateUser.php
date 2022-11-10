<?php

namespace App\Services;

use App\Models\User;
use Core\Abstractions\Service;
use Core\Helpers\DateTime;

class CreateUser extends Service
{
    public function __construct(string $email, string $password)
    {
        $this->createUser($email, $password);
    }

    private function createUser(string $email, string $password)
    {
        $user = new User([
            'email' => $email,
            'password' => $password,
            'created_at' => DateTime::currentDateTime()
        ]);
        try {
            return $user->create();
        } catch (\Exception $exception) {
            return 'Cant create';
        }
    }
}
