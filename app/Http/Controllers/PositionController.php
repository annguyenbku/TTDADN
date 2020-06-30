<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class PositionController extends Controller
{
    public function GetPosition(){
        $lat = DB::table('deviceroute')->where('id',2)->pluck('latitude');
        $long = DB::table('deviceroute')->where('id',2)->pluck('longitude');
        return view('index',['lat'=>$lat,'long'=>$long]);
    }
}
