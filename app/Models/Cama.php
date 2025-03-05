<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Cama extends Model
{
    use HasFactory;

    protected $table = "camas";

    protected $primaryKey = "cama_id";

    protected $fillable = [
        "cama_id",
        "descricao",
        "estado",
        "sala_id"
    ];

    public function sala()
    {
        return $this->belongsTo(Sala::class, "sala_id", "sala_id");
    }
}
