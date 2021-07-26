@extends('layout.admin_layout')
@section('title', 'Users List')
@section('content')
    <div class="app-main__inner">
        <div class="card-header-tab card-header">
            <div class="card-header-title font-size-lg text-capitalize font-weight-normal"><i class="pe-7s-map mr-3 text-muted opacity-6" style="font-size: 35px; color: #205781 !important;"> </i>Users</div>
        </div>
        <div class="tabs-animation">
            <div class="row">
                <div class="col-md-12">
                    <div class="card mb-3">
                        <div class="card-body">
                            <form action="javascript:void(0)" id="page_search_form">
                                <ul class="search-form">
                                    <li>
                                        <label>Name</label>
                                        <input name="name" id="name" type="text" placeholder="Type here...">
                                        <i class="fa fa-times"></i>
                                    </li>
                                    <li>
                                        <label>Mobile Number</label>
                                        <input name="mobile_number" id="mobile_number" type="text" placeholder="Type here...">
                                        <i class="fa fa-times"></i>
                                    </li>
                                    <li>
                                        <label>Email</label>
                                        <input name="email" id="email" type="text" placeholder="Type here...">
                                        <i class="fa fa-times"></i>
                                    </li>
                                    <li>
                                        <button type="button" id="page_search_btn" class="btn btn-primary pull-left">Search</button>
                                    </li>
                                </ul>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="card mb-3">
                        <div class="card-header-tab card-header">
                            <div class="card-header-title font-size-lg text-capitalize font-weight-normal"><i class="pe-7s-note2 mr-3 text-muted opacity-6" style="font-size: 35px;"> </i>Users List</div>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table style="width: 100%;" class="table table-hover table-striped table-bordered table-cursor">
                                    <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Date Created</th>
                                        <th>Name</th>
                                        <th>Mobile Number</th>
                                        <th>Email</th>
                                    </tr>
                                    </thead>
                                    <tbody id="append_list">

                                    </tbody>
                                </table>
                                @include('includes.pagination')
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@stop
@section('page-scripts')
    <script>

        window.onload = pageloading(0, '{{route('getUsersList')}}');

        $('#page_search_btn').on('click', function () {
            pageloading(0, '{{route('getUsersList')}}?'+$('#page_search_form').serialize())
        });
    </script>
@stop
