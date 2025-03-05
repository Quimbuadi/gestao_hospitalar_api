<?php

namespace App\Http\Controllers;

use App\Models\Paciente;
use Illuminate\Http\Request;

class PacienteController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
          // Obtém o valor de per_page e search
          $per_page = $request->query('per_page');
          $search = $request->query('search');
  
          // Inicia a consulta no modelo Paciente
          $pacienteQuery = Paciente::query();
  
          // Verifica se o parâmetro 'search' foi passado e filtra
          if ($search) {
              // Supondo que você queira filtrar pelo campo 'nome'. Altere conforme sua necessidade.
              $pacienteQuery->where('nome', 'like', '%' . $search . '%');
          }
  
          // Pagina os resultados
          $pacientes = $pacienteQuery->paginate($per_page);
  
          return $pacientes;
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'nome' => 'required|string|max:255',
            'data_nascimento' => 'required|date',
            'sexo' => 'required|string|max:1',
            'endereco' => 'required|string|max:255',
            'telefone' => 'required|string|max:15',
            'email' => 'required|string|email|max:255',
            'grupo_sanguineo' => 'string',
        ]);

        $paciente = new Paciente([
            'nome' => $request->get('nome'),
            'data_nascimento' => $request->get('data_nascimento'),
            'sexo' => $request->get('sexo'),
            'endereco' => $request->get('endereco'),
            'telefone' => $request->get('telefone'),
            'email' => $request->get('email'),
            'grupo_sanguineo' => $request->get('grupo_sanguineo'),
        ]);

        $paciente->save();

        return response()->json($paciente, 201);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $paciente = Paciente::findOrFail($id);
        return response()->json($paciente);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $request->validate([
            'nome' => 'string|max:255',
            'data_nascimento' => 'date',
            'sexo' => 'string|max:1',
            'endereco' => 'string|max:255',
            'telefone' => 'string|max:15',
            'email' => 'string|email|max:255',
            'grupo_sanguineo' => 'string',
        ]);

        $paciente = Paciente::findOrFail($id);

        $paciente->update($request->all());

        return response()->json($paciente);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $paciente = Paciente::findOrFail($id);
        $paciente->delete();

        return response()->json(null, 204);
    }
}
