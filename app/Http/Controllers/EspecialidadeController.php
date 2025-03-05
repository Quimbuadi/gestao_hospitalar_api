<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Especialidade;

class EspecialidadeController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $per_page = $request->query("per_page");
        $especialidades = Especialidade::paginate($per_page);
        return response()->json($especialidades);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'nome' => 'required|string|max:255',
            'descricao' => 'nullable|string',
            'ativo' => 'boolean'
        ]);

        $especialidade = Especialidade::create($validatedData);
        return response()->json($especialidade, 201);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $especialidade = Especialidade::findOrFail($id);
        return response()->json($especialidade);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $validatedData = $request->validate([
            'nome' => 'sometimes|required|string|max:255',
            'descricao' => 'nullable|string',
            'ativo' => 'sometimes|boolean'
        ]);

        $especialidade = Especialidade::findOrFail($id);
        $especialidade->update($validatedData);
        return response()->json($especialidade);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $especialidade = Especialidade::findOrFail($id);
        $especialidade->delete();
        return response()->json(null, 204);
    }
}
