<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Consulta extends Model
{
    use HasFactory;
    protected $table = "consultas";
    protected $primaryKey = "consulta_id";
    protected $fillable = [
        "consulta_id",
        "profissional_saude_id",
        "paciente_id",
        "tipo_consulta_id",
        "tipo_servico_id",
        "prioridade",
        "data_consulta",
        "status",
        "observacoes",
    ];

    public function paciente(): BelongsTo
    {
        return $this->belongsTo(Paciente::class, 'paciente_id');
    }

    public function profissionalSaude(): BelongsTo
    {
        return $this->belongsTo(ProfissionalSaude::class, 'profissional_saude_id');
    }
    public function tipoConsulta(): BelongsTo
    {
        return $this->belongsTo(TipoConsulta::class, 'tipo_consulta_id');
    }
    public function tipoServico(): BelongsTo
    {
        return $this->belongsTo(TipoServico::class, 'tipo_servico_id');
    }
}
