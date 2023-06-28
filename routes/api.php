<?php

use Illuminate\Http\Request;
use App\Http\Controllers\Api\AuthController;
use App\Http\Controllers\Api\EventController;
use Illuminate\Support\Facades\Route;

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

// The public routes
Route::post('/login', [ AuthController::class, 'login' ]);
Route::post('register', [ AuthController::class, 'register' ]);

// Protected routes
Route::middleware('auth:sanctum')->group(function () {
    Route::post('/logout', [ AuthController::class, 'logout' ]);
    Route::resource('/events', EventController::class);
});

