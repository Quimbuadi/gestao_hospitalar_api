<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::table('camas', function (Blueprint $table) {

            $table->unsignedBigInteger('sala_id')->nullable(); // Cria a coluna

            $table->foreign('sala_id') // Define a chave estrangeira
                ->references('sala_id') // Coluna da tabela estrangeira
                ->on('salas'); // Tabela estrangeira
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('camas', function (Blueprint $table) {
            $table->dropForeign(['sala_id']); // Remove a chave estrangeira
            $table->dropColumn('sala_id'); // Remove a coluna
        });
    }
};
