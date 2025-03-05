<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\TipoConsulta;

class TipoConsultaController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $per_page = $request->query('per_page');
        return TipoConsulta::with(['especialidade:especialidade_id,nome'])
            ->paginate($per_page);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {

        $validatedData = $request->validate([
            'nome' => 'required|string|max:255',
            'descricao' => 'nullable|string',
            'duracao' => 'nullable|integer',
            'especialidade_id' => 'required|integer|exists:especialidades,especialidade_id',
            'ativo' => 'boolean'
        ]);


        $tipoConsulta = TipoConsulta::create($validatedData);
        return response()->json($tipoConsulta, 201);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $tipoConsulta = TipoConsulta::findOrFail($id);
        return response()->json($tipoConsulta);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $validatedData = $request->validate([
            'nome' => 'sometimes|required|string|max:255',
            'descricao' => 'nullable|string',
            'duracao' => 'sometimes|nullable|integer',
            'especialidade_id' => 'sometimes|required|integer|exists:especialidades,especialidade_id',
            'ativo' => 'sometimes|boolean'
        ]);

        $tipoConsulta = TipoConsulta::findOrFail($id);
        $tipoConsulta->update($validatedData);
        return response()->json($tipoConsulta);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $tipoConsulta = TipoConsulta::findOrFail($id);
        $tipoConsulta->delete();
        return response()->json(null, 204);
    }
}
