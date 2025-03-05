<?php

namespace App\Http\Controllers;

use App\Models\ProfissionalSaude;
use Illuminate\Http\Request;

class ProfissionalSaudeController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $per_page = $request->query('per_page');
        $profissionais = ProfissionalSaude::paginate($per_page);
        return response()->json($profissionais);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'nome' => 'required|string|max:255',
            'tipo_profissional' => 'required|string|max:255',
            'telefone' => 'integer',
            'email' => 'string|email|max:255',
            'data_nascimento' => 'required|date',
            'sexo' => 'required|string|max:1',
            'endereco' => 'string|max:255',
        ]);

        $profissional = new ProfissionalSaude([
            'nome' => $request->get('nome'),
            'tipo_profissional' => $request->get('tipo_profissional'),
            'telefone' => $request->get('telefone'),
            'email' => $request->get('email'),
            'data_nascimento' => $request->get('data_nascimento'),
            'sexo' => $request->get('sexo'),
            'endereco' => $request->get('endereco'),
        ]);

        $profissional->save();

        return response()->json($profissional, 201);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $profissional = ProfissionalSaude::findOrFail($id);
        return response()->json($profissional);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $request->validate([
            'nome' => 'required|string|max:255',
            'tipo_profissional' => 'required|string|max:255',
            'telefone' => 'required|string|max:15',
            'email' => 'required|string|email|max:255',
            'data_nascimento' => 'required|date',
            'sexo' => 'required|string|max:1',
            'endereco' => 'required|string|max:255',
        ]);

        $profissional = ProfissionalSaude::findOrFail($id);

        $profissional->update($request->all());

        return response()->json($profissional);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $profissional = ProfissionalSaude::findOrFail($id);
        $profissional->delete();

        return response()->json(null, 204);
    }
}
