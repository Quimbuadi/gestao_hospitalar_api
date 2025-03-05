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
        Schema::table('consultas', function (Blueprint $table) {
            $table->unsignedBigInteger('tipo_servico_id')->nullable();
            ;
            $table->unsignedBigInteger('tipo_consulta_id')->nullable();
            ;
            $table->foreign('tipo_servico_id')->references('tipo_servico_id')->on('tipo_servicos');
            $table->foreign('tipo_consulta_id')->references('tipo_consulta_id')->on('tipo_consultas');
            $table->string('prioridade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('consultas', function (Blueprint $table) {
            //
        });
    }
};
