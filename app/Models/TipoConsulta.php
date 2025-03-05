<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class TipoConsulta extends Model
{
    use HasFactory;

    protected $table = "tipo_consultas";

    protected $primaryKey = "tipo_consulta_id";

    protected $fillable = [
        "tipo_consulta_id",
        'nome',
        'descricao',
        'duracao',
        'especialidade_id',
        'ativo'
    ];

    public function especialidade()
    {
        return $this->belongsTo(Especialidade::class, "especialidade_id", "especialidade_id");
    }

    public function consulta(): HasMany
    {
        return $this->hasMany(Consulta::class, 'tipo_consulta_id');
    }
}
