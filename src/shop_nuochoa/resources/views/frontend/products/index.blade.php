@extends('layouts.front')

@section('title')
    {{ $category->name }}
@endsection

<style>
    /* Card sản phẩm */
.product-card {
    border: none;
    border-radius: 10px;
    overflow: hidden;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    transition: transform 0.3s ease, box-shadow 0.3s ease;
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
    width: 100%;
    height: 300px;
    object-fit: cover;
    border-radius: 10px 10px 0 0;
    transition: transform 0.3s ease-in-out;
}

.product-card:hover .product-image img {
    transform: scale(1.1);
}

/* Tên sản phẩm */
.product-name {
    font-size: 1.1rem;
    font-weight: 600;
    color: #333;
    margin-bottom: 10px;
    transition: color 0.3s;
}

.product-card:hover .product-name {
    color: #007bff;
}

/* Giá sản phẩm */
.price-section {
    font-size: 1rem;
    margin: 10px 0;
    display: flex;
    justify-content: center;
    gap: 10px;
}

/* Lượt xem */
.view-count {
    font-size: 0.9rem;
    color: #666;
    display: flex;
    justify-content: center;
    align-items: center;
}

/* Overlay hiệu ứng khi hover */
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

/* Responsive chỉnh sửa */
@media (max-width: 768px) {
    .product-card {
        margin-bottom: 20px;
    }

    .product-name {
        font-size: 1rem;
    }

    .price-section span {
        font-size: 0.85rem;
    }
}

.product-overlay span {
    background:rgb(181, 208, 236);
    color: white;
    padding: 5px 10px;
    border-radius: 10px;
    transition: background 0.3s ease;
}

.product-overlay span:hover {
    background:rgb(42, 124, 211);
}


</style>


@section('content')          

        <div class="py-3 mb-4 shadow-sm bg-light border-top">
            <div class="container">
                <h6 class="mb-0">
                    
                    <a style="font-size: 16px;" href="{{ url('category') }}" class="text-decoration-none text-secondary">Danh mục sản phẩm</a> /
                    <span style="font-size: 18px;" class="text-dark">{{ $category->name }}</span>
                </h6>
            </div>
        </div>

        <div class="py-5">
    <div class="container">
        <!-- Tiêu đề danh mục -->
        <h2 class="text-center mb-4 text-uppercase font-weight-bold">{{ $category->name }}</h2>
        
        <!-- Hiển thị sản phẩm -->
        <div class="row">
            @foreach ($products as $prod)
                <div class="col-md-4 mb-4">
                    <div class="card product-card h-100">
                        <a href="{{ url('category/'.$category->slug.'/'.$prod->slug) }}" class="text-decoration-none">
                            <!-- Hình ảnh sản phẩm -->
                            <div class="product-image position-relative">
                                <img src="{{ asset('assets/uploads/products/'.$prod->image) }}" alt="{{ $prod->name }}" class="img-fluid rounded-top">
                                <div class="product-overlay">
                                    <span class="btn btn-light text-dark">Xem Chi Tiết</span>
                                </div>
                            </div> <br>
                            <!-- Thông tin sản phẩm -->
                            <div class="card-body text-center">
                                <h5 class="product-name">{{ $prod->name }}</h5>
                                <div class="price-section">
                                @if($prod->original_price > 0)
                                    <span style="font-size: 20px;" class="text-muted mr-2">
                                        <s>{{ number_format($prod->original_price) }} VNĐ</s>
                                    </span>
                                    @else
                                    <!-- Placeholder giữ khoảng trống -->
                                    <span style="font-size: 20px; visibility: hidden;" class="text-muted mr-2">
                                        <s></s>
                                    </span>
                                @endif                                    
                                    &nbsp;&nbsp; <span style="font-size: 25px;" class="text-danger font-weight-bold">{{ number_format($prod->selling_price) }} VNĐ</span>
                                </div>                             
                            </div>
                        </a>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
</div>

        @include('layouts.inc.footer')
@endsection