@extends('pages.vauceri.VaucerNav')
@section('sadrzaj_vaucera')

  <div class="row">
    <div class="col-md-4">
      <h1>Svi vauceri</h1>
    </div>
    <div class="col-md-4 col-md-offset-4 kreirajVaucerPadd">
      <!-- Trigger/Open The Modal -->
        <button id="myBtn" class="btnKreiraj">Kreiraj vaučer</button>

        <!-- The Modal -->
        <div id="myModal" class="modal">
          <!-- Modal content -->
          <div class="modal-content">
            <div class="modal-header">
              <span class="close">×</span>
              <h2>Kreiraj vaucer</h2>
            </div>
            <div class="modal-body">
              <input type="text" name="ponuda" placeholder="Unesi ponudu" class="txtKreirajVaucer">
            </br>
              <input type="text" name="cena" placeholder="Unesi cenu vaucera" class="txtKreirajVaucer">
            </br>
              <input type="text" name="cena_sa_popustom" placeholder="Cena vaucera sa popustom" class="txtKreirajVaucer">
            </br>
              <input type="submit" name="submit" value="Pošalji" class="sbmKreirajVaucer">
            </div>
            <div class="modal-footer">
              <h3>© Copyright 2016 Sta mi treba</h3>
            </div>
          </div>

        </div>
    </div>
  </div>

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
