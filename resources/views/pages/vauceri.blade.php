@extends('welcome')
@section('content')

    <h1>Svi vauceri</h1>
    @foreach($vaucer_putovanje as $vp)
      <div class="pin">
        <img src="{{ $vp->v_putovanje_slika  }}" >
        <div class="col-lg border_bot_solid">
          <p class="text-center">{{ $vp->v_putovanje_ponuda }}</p>
        </div>
        <div class="row">
          <div class="col-md-6 border_all_solid">
            <p class="text-center">Usteda 35%</p>
          </div>
          <div class="col-md-6 nopadding border_all_solid">
            <p class="text-center">Preuzeto 3 vaucera</p>
          </div>
        </div>
        <div class="row">
          <div class="col-md-6 border_all_solid">
            <p class="text-center">Redovna cena 8000 dinara</p>
          </div>
          <div class="col-md-6 nopadding border_all_solid">
            <p class="text-center">Cena sa popustom 5500 dinara</p>
          </div>
        </div>
      </div>
    @endforeach

@stop
