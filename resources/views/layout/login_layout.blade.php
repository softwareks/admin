<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Language" content="en">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="csrf-token" id="csrf-token" content="{{ csrf_token() }}">
    <title>Admin | @yield('title')</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no">
    <meta name="description" content="">
    <link rel="shortcut icon" href="{{ asset('admin_assets/images/logo.jpg')}}" />
    <link href="{{asset('admin_assets/main.css')}}" rel="stylesheet">
    <link href="{{asset('admin_assets/style.css')}}" rel="stylesheet">
    <link href="{{asset('admin_assets/responsive.css')}}" rel="stylesheet">
</head>

<body>

<div class="app-container app-theme-white body-tabs-shadow">
    <div class="app-container">
        <div class="h-100 bg-plum-plate bg-animation">
            <div class="d-flex h-100 justify-content-center align-items-center">
                <div class="mx-auto app-login-box col-md-8">
                    <div class="app-logo-inverse mx-auto mb-3"></div>
                    <div class="modal-dialog w-100 mx-auto">

                        @yield('content')
                    </div>
                    <div class="text-center text-white opacity-8 mt-3">© {{date('Y')}} - All Rights Reserved</div>
                </div>

            </div>
        </div>
    </div>
</div>

<script type="text/javascript" src="{{asset('admin_assets\scripts\jquery.js') }}"></script>
<script type="text/javascript" src="{{asset('admin_assets\scripts\main.js')}}"></script>
<script type="text/javascript" src="{{asset('admin_assets\scripts\jquery.validate.min.js')}}"></script>
<script type="text/javascript" src="{{asset('admin_assets\scripts\additional-methods.min.js')}}"></script>
<script type="text/javascript" src="{{asset('admin_assets\scripts\adminValidation.js')}}"></script>
@yield('page-scripts')
</body>
</html>
