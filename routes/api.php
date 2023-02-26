<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::post('/products', function (Request $request) {
    $product = new \App\Models\Product();
    $product->nombre = $request->nombre;
    $product->descripcion = $request->descripcion;
    $product->precio = $request->precio;
    $product->save();
    return Response()->json(['status' => 'OK', 'message' => 'The '.$product->name.' product was stored successfully!!'], 201);
});