<!DOCTYPE html>
<html lang="en">
<head>
    @include('includes.head')
</head>

<body>
    <div class="app-container app-theme-black body-tabs-shadow fixed-header fixed-sidebar">

        @include('includes.header')

        <div class="app-main">
            @include('includes.sidebar')

            <div class="app-main__outer">
                @yield('content')
                @include('includes.footer')
            </div>
        </div>
    </div>
    @include('includes.scripts')
    @yield('page-scripts')
</body>
</html>
