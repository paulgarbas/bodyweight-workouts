<!DOCTYPE html>
<html lang="en">
    @include('layout.head')

    <body id="page-top">
        
        @include('layout.nav')
        
        @yield('content')

        @include('layout.modal')

        @include('layout.footer')

        @include('layout.scripts')
    
    </body>
</html>