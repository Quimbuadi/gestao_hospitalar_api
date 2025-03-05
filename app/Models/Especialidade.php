<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Especialidade extends Model
{
    use HasFactory;

    protected $table = "especialidades";

    protected $primaryKey = "especialidade_id";

    protected $fillable = [
        "especialidade_id",
        "nome",
        "descricao",
        "ativo"
    ];

    public function tipoConsultas()
    {
        return $this->hasMany(TipoConsulta::class, 'especialidade_id', 'especialidade_id');
    }
}
