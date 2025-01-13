@extends('layouts.front')

@section('title')
    Danh Mục
@endsection

@section('content')

   

    <div class="py-5">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h2 class=" text-center">Danh Sách Danh Mục</h2>
                        <div class="row">
                            @foreach ($category as $cate)
                                <div class="col-md-3 mb-3">
                                    <a href="{{ url('category/'.$cate->slug) }}">
                                        <div style="text-align: center;" class="card h-100" >
                                            <img src="{{ asset('assets/uploads/category/'.$cate->image) }}" alt="Ảnh Danh Mục">
                                            <div class="card-body">
                                            <h5 style="color: ;">{{ $cate->name }}</h5>
                                            <p style="color: black;">
                                                <i>{{ $cate->description }}</i>
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </div> 
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>
    @include('layouts.inc.footer')
@endsection