@extends('layouts.app')

@section('content')

<style>
    /* Thiết lập nền giống login */
    .anhnen {
        background-image: url('assets/images/anhnen.gif');
        background-position: center;
        height: 100vh;
        margin: 0;
        display: flex;
        align-items: center;
        justify-content: center;
    }

    /* Card hiệu ứng “glass” */
    .card {
        background: rgba(255, 255, 255, 0.8); 
        backdrop-filter: blur(6px); /* hiệu ứng mờ nền */
        border: none; 
        border-radius: 10px; 
        box-shadow: 0 8px 20px rgba(0,0,0,0.2); 
    }

    /* Tiêu đề card */
    .card-header {
        background: #007bff; 
        color: #fff; 
        text-align: center; 
        font-size: 1.2rem; 
        font-weight: 600; 
        border-top-left-radius: 10px;
        border-top-right-radius: 10px;
    }

    /* Bên trong card-body */
    .card-body {
        padding: 2rem;
    }

    /* Khoảng cách hàng */
    .row.mb-3 {
        margin-bottom: 1.5rem !important;
    }

    /* Nút Đăng Ký */
    .btn.btn-primary {
        background-color: #007bff; 
        border: none;
        transition: background-color 0.3s ease;
    }
    .btn.btn-primary:hover {
        background-color: #0056b3; 
    }
</style>

<div class="anhnen">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    {{-- Tiêu đề --}}
                    <div class="card-header">{{ __('Đăng Ký Tài Khoản') }}</div>

                    {{-- Nội dung form --}}
                    <div class="card-body">
                        <form method="POST" action="{{ route('register') }}">
                            @csrf

                            {{-- Họ --}}
                            <div class="row mb-3">
                                <label for="lname" class="col-md-4 col-form-label text-md-end">{{ __('Họ') }}</label>

                                <div class="col-md-6">
                                    <input 
                                        id="lname" 
                                        type="text" 
                                        class="form-control @error('lname') is-invalid @enderror" 
                                        name="lname" 
                                        value="{{ old('lname') }}" 
                                        required 
                                        autofocus
                                    >

                                    @error('lname')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>

                            {{-- Tên --}}
                            <div class="row mb-3">
                                <label for="name" class="col-md-4 col-form-label text-md-end">{{ __('Tên') }}</label>

                                <div class="col-md-6">
                                    <input 
                                        id="name" 
                                        type="text" 
                                        class="form-control @error('name') is-invalid @enderror" 
                                        name="name" 
                                        value="{{ old('name') }}" 
                                        required
                                    >

                                    @error('name')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>

                            {{-- Gmail --}}
                            <div class="row mb-3">
                                <label for="email" class="col-md-4 col-form-label text-md-end">{{ __('Gmail') }}</label>

                                <div class="col-md-6">
                                    <input 
                                        id="email" 
                                        type="email" 
                                        class="form-control @error('email') is-invalid @enderror" 
                                        name="email" 
                                        value="{{ old('email') }}" 
                                        required
                                    >

                                    @error('email')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>

                            {{-- Mật Khẩu --}}
                            <div class="row mb-3">
                                <label for="password" class="col-md-4 col-form-label text-md-end">{{ __('Mật Khẩu') }}</label>

                                <div class="col-md-6">
                                    <input 
                                        id="password" 
                                        type="password" 
                                        class="form-control @error('password') is-invalid @enderror" 
                                        name="password" 
                                        required
                                    >

                                    @error('password')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>

                            {{-- Nhập lại Mật Khẩu --}}
                            <div class="row mb-3">
                                <label for="password-confirm" class="col-md-4 col-form-label text-md-end">{{ __('Nhập Lại Mật Khẩu') }}</label>

                                <div class="col-md-6">
                                    <input 
                                        id="password-confirm" 
                                        type="password" 
                                        class="form-control" 
                                        name="password_confirmation" 
                                        required
                                    >
                                </div>
                            </div>

                            {{-- Nút Đăng Ký --}}
                            <div class="row mb-0">
                                <div class="col-md-8 offset-md-4">
                                    <button type="submit" class="btn btn-primary">
                                        {{ __('Đăng Ký') }}
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                    {{-- Kết thúc card-body --}}
                </div>
                {{-- Kết thúc card --}}
            </div>
        </div>
    </div>
</div>

@endsection
