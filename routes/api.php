<?php

use App\Http\Controllers\ConsultaController;
use App\Http\Controllers\MedicoController;
use App\Http\Controllers\PacienteController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/medicos', [MedicoController::class, 'index']);
Route::get('/medicos/{id}', [MedicoController::class, 'show']);
Route::post('/medicos', [MedicoController::class,'store']);
Route::put('/medicos/{id}', [MedicoController::class, 'update']);
Route::delete('/medicos/{id}', [MedicoController::class, 'destroy']);

Route::get('/pacientes', [PacienteController::class,'index']);
Route::get('/pacientes/{id}', [PacienteController::class,'show']);
Route::post('/pacientes', [PacienteController::class,'store']);
Route::put('/pacientes/{id}', [PacienteController::class,'update']);
Route::delete('/pacientes/{id}', [PacienteController::class,'destroy']);

Route::get('/consultas', [ConsultaController::class,'index']);
Route::get('/consultas/{id}', [ConsultaController::class,'show']);
Route::post('/consultas', [ConsultaController::class,'store']);
Route::put('/consultas/{id}', [ConsultaController::class,'update']);
Route::delete('/consultas/{id}', [ConsultaController::class,'destroy']);

