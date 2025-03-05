<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\TipoServico;

class TipoServicoController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $per_page = $request->query('per_page');
        $tiposServicos = TipoServico::paginate($per_page);
        return response()->json($tiposServicos);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'nome' => 'required|string|max:255',
            'descricao' => 'nullable|string',
            'duracao' => 'nullable|integer',
            'ativo' => 'boolean',
        ]);

        $tipoServico = TipoServico::create($request->all());
        return response()->json($tipoServico, 201);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $tipoServico = TipoServico::findOrFail($id);
        return response()->json($tipoServico);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $request->validate([
            'nome' => 'sometimes|required|string|max:255',
            'descricao' => 'sometimes|nullable|string',
            // 'duracao' => 'sometimes|nullable|integer',
            // 'ativo' => 'sometimes|boolean',
        ]);

        $tipoServico = TipoServico::findOrFail($id);
        $tipoServico->update($request->all());
        return response()->json($tipoServico);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $tipoServico = TipoServico::findOrFail($id);
        $tipoServico->delete();
        return response()->json(null, 204);
    }
}
