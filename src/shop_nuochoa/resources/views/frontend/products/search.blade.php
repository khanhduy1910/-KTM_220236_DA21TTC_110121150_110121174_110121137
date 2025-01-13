@extends('layouts.front')

@section('title')
    Kết Quả Tìm Kiếm
@endsection

@section('content')

{{-- Thêm phần style tùy chỉnh ngay tại đây hoặc trong file CSS riêng --}}
<style>
    .search-results-section {
        background-color: #f8f9fa; /* màu nền nhạt để phân biệt với các khu vực khác */
        padding: 3rem 0;
    }
    .search-results-title {
        font-size: 1.8rem;
        font-weight: bold;
        margin-bottom: 2rem;
        color: #343a40;
        position: relative;
        display: inline-block;
    }
    .search-results-title::after {
        content: "";
        display: block;
        width: 60px;
        height: 3px;
        background-color: #007bff;
        margin-top: 8px;
    }

    /* Tùy chỉnh hiển thị của Owl Carousel */
    .featured-carousel .owl-nav button.owl-prev,
    .featured-carousel .owl-nav button.owl-next {
        background: #007bff;
        color: #fff;
        padding: 6px 12px;
        border-radius: 50%;
        margin: 0 5px;
        outline: none;
        border: none;
    }
    .featured-carousel .owl-nav button.owl-prev:hover,
    .featured-carousel .owl-nav button.owl-next:hover {
        background: #0056b3;
        color: #fff;
    }

    /* Tùy chỉnh thẻ .card */
    .card {
        border: none;
        transition: transform 0.3s ease, box-shadow 0.3s ease;
    }
    .card:hover {
        transform: translateY(-5px);
        box-shadow: 0 8px 15px rgba(0,0,0,0.1);
    }
    .card img {
        object-fit: cover;
        height: 200px;
    }
    .card-body {
        text-align: center;
        padding: 1rem;
    }
    .card-body h5 {
        margin-bottom: 0.5rem;
        font-size: 1.1rem;
        color: #333;
        font-weight: 600;
        min-height: 40px; /* tránh vỡ layout nếu tên sản phẩm dài */
    }
    .price-info {
        font-size: 0.9rem;
        color: #777;
    }

    /* Tùy chỉnh khi không có kết quả */
    .no-results {
        font-size: 1.2rem;
        color: #dc3545; /* màu đỏ cảnh báo */
        margin-top: 2rem;
    }
</style>

<div class="search-results-section">
    <div class="container">
        <div class="row">
            <h2 class="search-results-title text-center w-100">
                Kết Quả Tìm Kiếm Của "{{ $keywords }}"
            </h2>

            @if($search_product->count() > 0)
                <div class="owl-carousel featured-carousel owl-theme">
                    @foreach($search_product as $product)
                        <div class="item mt-3">
                            <a href="{{ url('category/'.$product->category->slug.'/'.$product->slug) }}">
                                <div class="card">
                                    <img
                                        src="{{ asset('assets/uploads/products/'.$product->image) }}"
                                        alt="Ảnh Sản Phẩm"
                                        class="card-img-top"
                                    >
                                    <div class="card-body">
                                        <h5>{{ $product->name }}</h5>
                                        <div class="price-info">                                    
                                            @if($product->original_price > 0)
                                                <span style="font-size: 17px;" class="float-start text-muted">
                                                    <s>{{ number_format($product->original_price) }} VNĐ</s>
                                                </span>
                                            @else
                                                <!-- Placeholder giữ khoảng trống -->
                                                <span style="font-size: ; visibility: hidden;" class="text-muted">
                                                    <s></s>
                                                </span>
                                            @endif
                                                <span style="font-size: 22px;" class="float-end text-success fw-bold">
                                                    {{ number_format($product->selling_price) }} VNĐ
                                                </span>                         
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                    @endforeach
                </div>
                
                {{-- Phân trang (pagination) --}}
                <div class="w-100 d-flex justify-content-center mt-4">
                    {{ $search_product->links() }}
                </div>
            @else
                <p class="no-results text-center w-100">
                    <i class="fas fa-exclamation-circle"></i> Không tìm thấy kết quả nào.
                </p>
            @endif
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
            576:{
                items:2
            },
            768:{
                items:3
            },
            1200:{
                items:4
            }
        }
    })
</script>
@endsection
