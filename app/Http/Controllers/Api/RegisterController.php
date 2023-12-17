<?php

namespace App\Http\Controllers\Api;


use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\Api\BaseController as BaseController;
use Illuminate\Support\Facades\Validator;
//use Validator;

class RegisterController extends BaseController
{
    public function register(Request $request)
    {
        $validator= Validator::make($request->all(),[
            'name'=>'required',
            'email'=>'required|email',
            'password'=>'required',
            'c_password'=>'required|same:password',
        ]);
        if ($validator->fails()) {
           return $this->sendError('Please Validate Error', $validator->errors());
        }
        $input=$request->all();
        $input['password']=Hash::make($input['password']);
        $user=User::create($input);
        $success['token']=$user->createToken('safaa')->accessToken;
        $success['name']=$user->name;

        return $this->sendResponse($success,'user registered successfully');
    }
    
    public function login(Request $request)
    {
        if (Auth::attempt(['email'=> $request->email,'password'=> $request->password])) {
            //$user=Auth::user();
            $id=Auth::user()->id;
            $user=User::find($id);
            $success['token']=$user->createToken('safaa')->accessToken;
            $success['name']=$user->name;
            return $this->sendResponse($success,'user login successfully');
        }
        else {
           return $this->sendError('Please check your Auth', ['error'=>'Unauthorised']);
        }
    }
}
