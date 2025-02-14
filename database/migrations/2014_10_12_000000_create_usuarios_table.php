<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('usuarios', function (Blueprint $table) {
            $table->id('usuario_id');
            $table->string('nome');
            $table->string('email')->unique();
            $table->integer('telefone')->nullable();
            $table->timestamp('email_verified_at')->nullable();
            $table->string('senha');
            $table->enum('tipo', ['admin', 'medico', 'enfermeiro', 'recepcionista'])->default('recepcionista');
            $table->rememberToken();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('users');
    }
};
