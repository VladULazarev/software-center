<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Traits\HttpResponses;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use App\Http\Requests\StoreUserRequest;
use App\Http\Requests\LoginUserRequest;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;
use App\Models\User;
use Illuminate\Validation\ValidationException;

class AuthController extends Controller
{
    use HttpResponses;

    /**
     * Handle an incoming login request.
     *
     * @param  LoginUserRequest  $request
     * @return JsonResponse
     *
     * @throws ValidationException
     */
    public function login(LoginUserRequest $request): JsonResponse
    {
        $credentials = ['login' => $request->login, 'password' => $request->password];

        if (! Auth::attempt($credentials)) {
            return $this->error('', 'Credentials do not match.', 401);
        }

        $user = User::where('login', $request->login)->first();

        $token = $user->createToken('API Token of ' . $user->first_name);

        return $this->success([
            'user' => $user,
            'token' => $token->plainTextToken
        ], 'You have been successfully logged in.');
    }

    /**
     * Handle an incoming registration request.
     *
     * @param  StoreUserRequest  $request
     * @return JsonResponse
     *
     * @throws ValidationException
     */
    public function register(StoreUserRequest $request): JsonResponse
    {
        $user = User::create([
            'login' => $request->login,
            'first_name' => $request->first_name,
            'last_name' => $request->last_name,
            'birthday' => $request->birthday,
            'password' => Hash::make($request->password),
        ]);

        $token = $user->createToken('API Token of ' . $request->first_name);

        return $this->success([
            'user' => $user,
            'token' => $token->plainTextToken
        ], 'You have been successfully logged in.');
    }

    /**
     * Handle an incoming logout request.
     *
     * @return \Illuminate\Http\Response
     */
    public function logout()
    {
        Auth::user()->currentAccessToken()->delete();

        return $this->success('', 'You have successfully been logged out', 200);
    }
}
