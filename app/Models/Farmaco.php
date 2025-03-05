<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Farmaco extends Model
{
    use HasFactory;

    protected $table = "farmacos";

    protected $primaryKey = "farmaco_id";

    protected $fillable = [
        'farmaco_id',
        'nome',
        'dosagem',
        'forma_farmaceutica',
        'validade',
        'estoque',
        'descricao'
    ];
}
