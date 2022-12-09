<?php

namespace App\Migrations;

use Core\Abstractions\Migration;
use Core\Database\Query\TableBuilder;
use Core\Database\Schema;

final class CreateUsersTable extends Migration
{
    private const USERS_TABLE = 'users';

    public static function up(): void
    {
        Schema::create(self::USERS_TABLE, function (TableBuilder $table) {
            $table->id()->unique()->notNull()->autoIncrement();
            $table->varchar('name', '255')->notNull();
            $table->varchar('email', 255)->unique()->notNull();
            $table->varchar('password', 255)->notNull();
            $table->timeStamp('created_at');
            $table->timeStamp('updated_at');
            return $table;
        });
    }

    public static function down(): void
    {
        Schema::drop(self::USERS_TABLE);
    }
}
