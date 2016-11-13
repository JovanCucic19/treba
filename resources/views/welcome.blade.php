<!DOCTYPE html>
<html lang="en">

    <head>
      @include('includes.head')
    </head>

    <body>
      <div class="container">

        <header class="row">
          @include('includes.header')
        </header>

        <h1 class="h1">Neki sadrzaj sa welcome.blade.php stranice!</h1>

        <div id="main" class="row">
          @yield('content')
        </div>

        <footer class="row">
          @include('includes.footer')
        </footer>

      </div>
    </body>
</html>
