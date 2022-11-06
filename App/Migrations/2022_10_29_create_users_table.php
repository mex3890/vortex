<?php

namespace App\Migrations;

use Core\Abstractions\Migration;
use Core\Database\DbTable;
use Core\Database\Schema;

final class CreateUsersTable extends Migration
{
    private const USERS_TABLE = 'users';

    public static function up(): void
    {
        Schema::create(self::USERS_TABLE, $table = new DbTable(), function () use (&$table) {
            $table->id()->unique()->notNull()->autoIncrement();
            $table->varchar('email', 255)->unique()->notNull();
            $table->varchar('password', 255)->notNull();
            $table->timeStamp('created_at');
            $table->timeStamp('updated_at');
            return $table->columns;
        });
    }

    public static function down(): void
    {
        Schema::dropIfExists(self::USERS_TABLE);
    }
}
