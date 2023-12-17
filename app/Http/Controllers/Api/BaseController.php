<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class BaseController extends Controller
{
    public function sendResponse($result, $message){
        $response=[
            'success'=>'true',
            'data'=>$result,
            'message'=>$message
        ];
        return response()->json($response, 200);
    }

    public function sendError($error, $errorMessage=[], $code=404){
        $response=[
            'success'=>'false',
            'data'=>$error,
        ];
        if (!empty($errorMessage)) {
            $response['message'] = $errorMessage;
        }
        return response()->json($response, $code);
    }
}
