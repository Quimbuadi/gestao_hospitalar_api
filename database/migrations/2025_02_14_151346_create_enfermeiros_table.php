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
        Schema::create('enfermeiros', function (Blueprint $table) {
            $table->id('enfermeiro_id'); // Identificador único do enfermeiro
            $table->string('nome'); // Nome do enfermeiro
            $table->string('bi', 14)->unique(); // BI único do enfermeiro
            $table->date('data_nascimento'); // Data de nascimento
            $table->string('telefone', 15)->nullable(); // Telefone (opcional)
            $table->string('email')->nullable(); // Email (opcional)
            $table->enum('tipo', ['estagiario', 'efetivo'])->default('efetivo'); // Tipo: Estagiário ou Efetivo
            $table->string('registro_corens')->nullable()->unique(); // Registro no COREN (opcional, único para enfermeiros efetivos)
            $table->unsignedBigInteger('usuario_id');// Chave estrangeira referenciando o usuário (se você já tiver a tabela de usuários)
            $table->foreign('usuario_id')->references('usuario_id')->on('usuarios');
            $table->timestamps(); // Campos de timestamps (created_at e updated_at)
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('enfermeiros');
    }
};
