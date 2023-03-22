<?php

use App\Http\Controllers\PedidosController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/pedidos', [PedidosController::class, 'index'])->name('pedidos.index');

Route::get('/pedidos/create', [PedidosController::class, 'create'])->name('pedidos.create');

Route::get('/pedidos/{pedido}', [PedidosController::class, 'show'])->name('pedidos.show');

Route::get('/pedidos/{id}/edit', [PedidosController::class, 'edit'])->name('pedidos.edit');

Route::post('/pedidos', [PedidosController::class, 'store'])->name('pedidos.store');

Route::put('/pedidos/{id}', [PedidosController::class, 'update'])->name('pedidos.update');

Route::delete('/pedidos/{id}', [PedidosController::class, 'destroy'])->name('pedidos.destroy');
