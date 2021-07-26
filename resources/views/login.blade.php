@extends('layout.login_layout')
@section('title', 'Login')
@section('content')
    <style>
        .custom-logo {
            text-align: center;
        }
    </style>
<div class="modal-content">
    <form method="POST" action="{{route('submitAdminLogin')}}" id="admin_login_form">
        @csrf
        <div class="modal-body">
            <div class="custom-logo">
                <img src="{{asset('admin_assets/images/logo.png')}}" width="40%" height="40%" alt="">
            </div>
            <div class="h5 modal-title text-center">
                <h4 class="mt-2">
                    <div>Welcome back,</div>
                    <span>Please sign in to your account below.</span>
                </h4>
            </div>
            @if(session()->has('message'))
            <div class="alert alert-success" role="alert">
                {{session('message')}}
            </div>
            @endif
            @if(session()->has('error'))
            <div class="alert alert-danger" role="alert">
                {{session('error')}}
            </div>
            @endif
            <div class="form-row">
                <div class="col-md-12">
                    <div class="position-relative form-group">
                        <input name="email" placeholder="Email here..." type="email" class="form-control" value="{{ old('email') }}">
                        @error('email')
                        <label class="error">{{$message}}</label>
                        @enderror
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="position-relative form-group">
                        <input name="password" value="{{old('passwoed')}}" placeholder="Password here..." type="password" class="form-control">
                        @error('password')
                        <label class="error">{{$message}}</label>
                        @enderror
                    </div>
                </div>
            </div>
            <div class="position-relative form-check"></div>

        </div>
        <div class="modal-footer clearfix">

{{--            <div class="float-left"><a href="{{route('adminEmail')}}" class="btn-lg btn btn-link">Recover Password</a></div>--}}
            <div class="float-right">
                <button type="submit" class="btn btn-primary btn-lg">Login to Dashboard</button>
            </div>
        </div>
    </form>
</div>
@stop
