<!DOCTYPE html>
<html lang="en">
    <head>
      @include('includes.head')
    </head>

    <body>
      <div class="container">

        <div class="nav_box">
          @include('includes.header')
        </div>

        <div class="main_box">
          @yield('content')

          <div class="pushFuter"></div>
          <div class="futer">
                @include('includes.footer')
          </div>
        </div>
      </div>

    </body>
</html>
