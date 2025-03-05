<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Farmaco;

class FarmacoController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $per_page = $request->query("per_page");
        $farmacos = Farmaco::paginate($per_page);
        return response()->json($farmacos);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'nome' => 'required|string|max:255',
            'dosagem' => 'required|string|max:255',
            'forma_farmaceutica' => 'required|string|max:255',
            'validade' => 'nullable|date',
            'estoque' => 'required|integer',
            'descricao' => 'nullable|string'
        ]);

        $farmaco = Farmaco::create($validatedData);
        return response()->json($farmaco, 201);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $farmaco = Farmaco::findOrFail($id);
        return response()->json($farmaco);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $validatedData = $request->validate([
            'nome' => 'sometimes|required|string|max:255',
            'dosagem' => 'sometimes|required|string|max:255',
            'forma_farmaceutica' => 'sometimes|required|string|max:255',
            'validade' => 'sometimes|required|date',
            'estoque' => 'sometimes|required|integer',
            'descricao' => 'nullable|string'
        ]);

        $farmaco = Farmaco::findOrFail($id);
        $farmaco->update($validatedData);
        return response()->json($farmaco);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $farmaco = Farmaco::findOrFail($id);
        $farmaco->delete();
        return response()->json(null, 204);
    }
}
