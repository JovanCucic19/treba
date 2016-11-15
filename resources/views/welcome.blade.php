<!DOCTYPE html>
<html lang="en">

    <head>
      @include('includes.head')
    </head>

    <body>
      <div class="page-wrap">

        <div class="nav_box">
          @include('includes.header')
        </div>

        <div class="main_box">
          @yield('content')
        </div>
      </div>

      <div class="footer">
        @include('includes.footer')
      </div>
    </body>
</html>
