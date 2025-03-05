<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class TipoServico extends Model
{
    use HasFactory;

    protected $table = "tipo_servicos";

    protected $primaryKey = "tipo_servico_id";

    protected $fillable = [
        "tipo_servico_id",
        "nome",
        "descricao",
        "duracao",
        "ativo"
    ];

    public function consulta(): HasMany
    {
        return $this->hasMany(Consulta::class, 'tipo_servico_id');
    }
}
