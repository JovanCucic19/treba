@extends('pages.vauceri.VaucerNav')
@section('sadrzaj_vaucera')

    <h1>Putovanja</h1>
    @foreach($vauceri as $v)

      <div class="pin">
        <img src="{{ $v->v_slika }}" >
        <div class="col-lg border_bot_solid">
          <p class="text-center">{{ $v->v_ponuda }}</p>
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
