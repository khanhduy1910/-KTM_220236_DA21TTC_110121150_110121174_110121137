@extends('layouts.front')

@section('title')
    Tất Cả Sản Phẩm
@endsection

@section('content')
<style>
    /* Card sản phẩm */
    .product-card {
        border: none;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        transition: transform 0.3s ease, box-shadow 0.3s ease;
        overflow: hidden;
        border-radius: 10px;
        display: flex;
        flex-direction: column;
        justify-content: space-between;

    }

    .product-card:hover {
        transform: translateY(-5px);
        box-shadow: 0 8px 15px rgba(0, 0, 0, 0.2);
    }

    /* Ảnh sản phẩm */
    .product-image img {
        transition: transform 0.3s ease-in-out;
        width: 100%; /* Đảm bảo hình ảnh chiếm toàn bộ chiều rộng thẻ */
        height: 300px; /* Đặt chiều cao cố định */
        object-fit: cover; /* Cắt hình ảnh để vừa khung */
        border-radius: 10px 10px 0 0; /* Bo góc phía trên */
    }

    .product-card:hover .product-image img {
        transform: scale(1.1);
    }

    /* Overlay trên ảnh */
    .product-overlay {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        opacity: 0;
        transition: opacity 0.3s ease;
    }

    .product-card:hover .product-overlay {
        opacity: 1;
    }

    /* Tên sản phẩm */
    .product-name {
        font-size: 1.1rem;
        font-weight: 600;
        margin-bottom: 10px;
    }

    /* Giá sản phẩm */
    .price-section {
        display: flex;
        justify-content: space-between;
        align-items: center;
        font-size: 1rem;
        margin: 10px 0;
    }

    /* Lượt xem */
    .view-count {
        font-size: 0.9rem;
        display: flex;
        align-items: center;
        color: #666;
    }

    /* Đường link không gạch chân */
    .text-decoration-none {
        text-decoration: none;
    }

    .card-body {
        padding: 15px;
        text-align: center; /* Căn giữa nội dung */
    }

    .card-body h5 {
        margin-bottom: 10px;
        font-size: 1rem;
        font-weight: bold;
    }

    @media (max-width: 768px) {
        .product-card {
            margin-bottom: 20px;
        }

        .product-name {
            font-size: 1rem;
        }

        .price-section span {
            font-size: 0.9rem;
        }
    }

</style>

<div class="py-5">
    <div class="container">
        <div class="row">
            <h2 class="text-center mb-4">Danh sách Sản Phẩm</h2>
            <div class="row">
                @foreach ($allProducts as $product)
                    <div class="col-md-4 mb-4">
                        <div class="card product-card h-150">
                            <a href="{{ url('category/'.$product->category->slug.'/'.$product->slug) }}" class="text-decoration-none">
                                <!-- Image with hover effect -->
                                <div class="product-image position-relative">
                                    <img src="{{ asset('assets/uploads/products/'.$product->image) }}" alt="Ảnh Sản Phẩm" class="img-fluid rounded-top">
                                    <div class="product-overlay">
                                        <span class="btn btn-light text-dark">Xem Chi Tiết</span>
                                    </div>
                                </div> <br>
                                <!-- Product Info -->
                                <div class="card-body">
                                    <h5 style="font-size:20px;" class="product-name text-dark">{{ $product->name }}</h5>
                                    <div class="price-section">
                                        @if($product->original_price > 0)
                                        <span style="font-size: 20px;" class="text-muted mr-2">
                                            <s>{{ number_format($product->original_price) }} VNĐ</s>
                                        </span>
                                        @else
                                        <!-- Placeholder giữ khoảng trống -->
                                        <span style="font-size: 20px; visibility: hidden;" class="text-muted mr-2">
                                            <s>0 VNĐ</s>
                                        </span>
                                         @endif
                                        <span style="font-size: 25px;" class="text-danger font-weight-bold">{{ number_format($product->selling_price) }} VNĐ</span>
                                    </div>
                                    
                                    <div style="font-size: 15px;" class="view-count mt-2 text-secondary">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-eye" viewBox="0 0 16 16">
                                        <path d="M16 8s-3-5.5-8-5.5S0 8 0 8s3 5.5 8 5.5S16 8 16 8M1.173 8a13.133 13.133 0 0 1 1.66-2.043C4.12 4.668 5.88 3.5 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.133 13.133 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755C11.879 11.332 10.119 12.5 8 12.5c-2.12 0-3.879-1.168-5.168-2.457A13.134 13.134 0 0 1 1.172 8z"/>
                                        <path d="M8 5.5a2.5 2.5 0 1 0 0 5 2.5 2.5 0 0 0 0-5M4.5 8a3.5 3.5 0 1 1 7 0 3.5 3.5 0 0 1-7 0"/>
                                    </svg> &nbsp;
                                    {{ $product->view_count }} Lượt Xem
                                    </div>                            
                                </div>
                            </a>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
</div>

@include('layouts.inc.footer')
@endsection

@section('scripts')
    <script>
        $('.featured-carousel').owlCarousel({
            loop:true,
            margin:10,
            nav:true,
            dots:false,
            responsive:{
                0:{
                    items:1
                },
                600:{
                    items:3
                },
                1000:{
                    items:4
                }
            }
        })
    </script>
@endsection