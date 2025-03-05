<?php

use App\Http\Controllers\AreaHospitalController;
use App\Http\Controllers\CamaController;
use App\Http\Controllers\ConsultaController;
use App\Http\Controllers\EspecialidadeController;
use App\Http\Controllers\FarmacoController;
use App\Http\Controllers\MedicoController;
use App\Http\Controllers\PacienteController;
use App\Http\Controllers\ProfissionalSaudeController;
use App\Http\Controllers\SalaController;
use App\Http\Controllers\TipoConsultaController;
use App\Http\Controllers\TipoServicoController;
use App\Http\Controllers\TriagemController;
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

Route::resource('medicos', MedicoController::class);
Route::resource('pacientes', PacienteController::class);
Route::resource('consultas', ConsultaController::class);
Route::resource('camas', CamaController::class);
Route::resource('salas', SalaController::class);
Route::resource('profissional-saude', ProfissionalSaudeController::class);
Route::resource('areas-hospital', AreaHospitalController::class);
Route::resource('farmacos', FarmacoController::class);
Route::resource('especialidades', EspecialidadeController::class);
Route::resource('tipo-consulta', TipoConsultaController::class);
Route::resource('tipo-servico', TipoServicoController::class);
Route::resource('triagem', TriagemController::class);