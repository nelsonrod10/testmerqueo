<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ApiController extends Controller
{
    public function sendReponse($data, $status){

      return response()->json(['data'=>$data],$status);
    }
}
