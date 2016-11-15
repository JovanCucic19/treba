<?php

namespace App\Http\Controllers;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;


class SelectController extends Controller {


  public function selectAllVauceriPutovanje(){

    $vaucer_putovanje = DB::table('vaucer_putovanje')->get();

    return view('pages.vauceri', ['vaucer_putovanje'=>$vaucer_putovanje]);

  }


}


 ?>
