@extends('layouts.app')

@section('content')

<style>
    /* Thiết lập nền cho trang đăng nhập */
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
        border: none; /* bỏ viền mặc định của card */
        border-radius: 10px; 
        box-shadow: 0 8px 20px rgba(0,0,0,0.2); /* đổ bóng nhẹ */
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

    /* Nút Đăng Nhập */
    .btn.btn-primary {
        background-color: #007bff; 
        border: none;
        transition: background-color 0.3s ease;
    }
    .btn.btn-primary:hover {
        background-color: #0056b3; 
    }

    /* Link Quên Mật Khẩu */
    .btn-link {
        color: #007bff;
    }
    .btn-link:hover {
        color: #0056b3;
        text-decoration: underline;
    }

</style>

<div class="anhnen">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    {{-- Tiêu đề --}}
                    <div class="card-header">{{ __('Đăng Nhập') }}</div>

                    {{-- Nội dung form --}}
                    <div class="card-body">
                        <form method="POST" action="{{ route('login') }}">
                            @csrf

                            {{-- Nhập Email --}}
                            <div class="row mb-3">
                                <label for="email" class="col-md-4 col-form-label text-md-end">
                                    {{ __('Gmail') }}
                                </label>

                                <div class="col-md-6">
                                    <input 
                                        id="email" 
                                        type="email" 
                                        class="form-control @error('email') is-invalid @enderror" 
                                        name="email" 
                                        value="{{ old('email') }}" 
                                        required 
                                        autocomplete="email" 
                                        autofocus
                                    >

                                    @error('email')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>

                            {{-- Nhập Password --}}
                            <div class="row mb-3">
                                <label for="password" class="col-md-4 col-form-label text-md-end">
                                    {{ __('Mật Khẩu') }}
                                </label>

                                <div class="col-md-6">
                                    <input 
                                        id="password" 
                                        type="password" 
                                        class="form-control @error('password') is-invalid @enderror" 
                                        name="password" 
                                        required 
                                        autocomplete="current-password"
                                    >

                                    @error('password')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>

                            {{-- Ghi nhớ mật khẩu --}}
                            <div class="row mb-3">
                                <div class="col-md-6 offset-md-4">
                                    <div class="form-check">
                                        <input 
                                            class="form-check-input" 
                                            type="checkbox" 
                                            name="remember" 
                                            id="remember" 
                                            {{ old('remember') ? 'checked' : '' }}
                                        >

                                        <label class="form-check-label" for="remember">
                                            {{ __('Nhớ Mật Khẩu') }}
                                        </label>
                                    </div>
                                </div>
                            </div>

                            {{-- Nút Submit + Quên Mật Khẩu --}}
                            <div class="row mb-0">
                                <div class="col-md-8 offset-md-4">
                                    <button type="submit" class="btn btn-primary">
                                        {{ __('Đăng Nhập') }}
                                    </button>

                                    @if (Route::has('password.request'))
                                        <a class="btn btn-link" href="{{ route('password.request') }}">
                                            {{ __('Quên Mật Khẩu?') }}
                                        </a>
                                    @endif
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
