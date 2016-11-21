<?php

namespace App\Http\Controllers;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;


class VaucerController extends Controller{

  public function selectAllVauceri(){

    $vauceri = DB::table('vauceri')->get();

    return view('pages.vauceri.SviVauceri', ['vauceri'=>$vauceri]);

  }

  public function selectPutovanjaVauceri(){

    $putovanja = DB::table('vauceri')->where('v_tip','v_putovanje')->get();

    return view('pages.vauceri.putovanja', ['vauceri'=>$putovanja]);

  }

  public function selectUslugeVauceri(){

    $putovanja = DB::table('vauceri')->where('v_tip','v_usluge')->get();

    return view('pages.vauceri.putovanja', ['vauceri'=>$putovanja]);

  }

}




 ?>
