<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Response;

class UserController extends Controller
{
    public function register(Request $request){
        $request->validate([
            'name' => 'required|max:255',
            'mobile_number' => 'unique:users,mobile_number',
            'email' => 'required|email|unique:users,email',
            'password' => 'required|max:15|min:8',
        ],[
            'mobile_number.unique' => 'Mobile number already exists.',
            'email.unique' => 'Email already exists.',
        ]);

        try {
            $user=new User();
            $user->name=$request->name;
            $user->mobile_number=$request->mobile_number;
            $user->email=$request->email;
            $user->password=Hash::make($request->password);
            $user->save();

            $data=['status' => 'success', 'user'=>$user];
            return Response::json($data, 200);
        }
        catch (\Exception $e){
            $data=['status' => 'error', 'message'=>$e->getMessage()];
            return Response::json($data, 422);
        }
    }

    public function registerProvider(Request $request){
        $request->validate([
            'name' => 'required|max:255',
            'email' => 'required|email',
            'provider' => 'required|max:255',
            'provider_id' => 'required',
        ],[
            'provider_id.unique' => 'Provider id already exists.',
        ]);

        try{
            $check_user=User::where('email', $request->email)->orWhere('provider_id', $request->provider_id)->first();
            if ($check_user){
                if (is_null($check_user->provider_id)){
                    $check_user->provider=$request->provider;
                    $check_user->provider_id=$request->provider_id;
                    $check_user->save();
                }

                $user=$check_user;
            }
            else{
                $user=new User();
                $user->name=$request->name;
                $user->email=$request->email;
                $user->provider=$request->provider;
                $user->provider_id=$request->provider_id;
                $user->save();
            }

            $token = $user->createToken('Password Grant to User Through Provider')->accessToken;

            $data=['status' => 'success', 'user'=>$user, 'token'=>$token];
            return Response::json($data, 200);
        }
        catch (\Exception $e){
            $data=['status' => 'error', 'message'=>$e->getMessage()];
            return Response::json($data, 422);
        }
    }

    public function login(Request $request){
        $request->validate([
            'email' => 'required|email',
            'password' => 'required'
        ]);

        $user=User::where(['email'=>$request->email, 'role'=>'user'])->first();
        if ($user){
            if (Hash::check($request->password, $user->password)) {
                $token = $user->createToken('Password Grant to User')->accessToken;
                $data=['status' => 'success', 'user'=>$user, 'token'=>$token];
                return Response::json($data, 200);
            }
            else {
                $data=['status' => 'error', 'message'=>'Email or Password entered is incorrect.'];
                return Response::json($data, 422);
            }
        }
        else {
            $data=['status' => 'error', 'message'=>'Email or Password entered is incorrect.'];
            return Response::json($data, 422);
        }
    }

    public function logout(){
        try {
            Auth::guard('user')->user()->token()->revoke();

            $data=['status' => 'success', 'message' => 'User logged out successfully.'];
            return Response::json($data,200);
        }
        catch (\Exception $e){
            $data=['status' => 'error', 'message'=>$e->getMessage()];
            return Response::json($data, 422);
        }
    }




}
