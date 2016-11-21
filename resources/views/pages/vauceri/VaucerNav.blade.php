@extends('welcome')
@section('content')

    {{-- OK --}}
    {{-- @foreach($vauceri as $v)
      <p class="text-center">{{ $v->v_tip }}</p>
    @endforeach --}}

    <div class="row pushBox">
      <div class="col-md-2  ">
        <div class="col-md-10 border_all_solid">
            <a href="/test/public/vauceri/SviVauceri"><p class="text-center">Svi vauceri</p></a>
        </div>

      </div>
      <div class="col-md-2 ">
        <div class="col-md-10 border_all_solid">
            <a href="/test/public/vauceri/putovanja"><p class="text-center">Putovanje</p></a>
        </div>
      </div>
      <div class="col-md-2 ">
        <div class="col-md-10 border_all_solid">
            <a href="/test/public/vauceri/usluga"><p class="text-center">Usluge</p></a>
        </div>
      </div>
      <div class="col-md-2 ">
        <div class="col-md-10 border_all_solid">
            <a href="/test/public"><p class="text-center">Ostalo</p></a>
        </div>
      </div>
    </div>

    <h2>Ovde hocemo da ispisemo sve vaucere</h2>
    <div class="pushBox"></div>
    @yield('sadrzaj_vaucera')


@endsection
