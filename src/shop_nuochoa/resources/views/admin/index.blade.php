@extends('layouts.admin')

@section('title')
    Dashboard
@endsection
<style>
    /* Dashboard card styles */
.dashboard-card {
    border-radius: 15px;
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.dashboard-card:hover {
    transform: scale(1.05);
    box-shadow: 0 12px 25px rgba(0, 0, 0, 0.2);
}

/* Icon styles */
.icon-lg {
    font-size: 3.5rem;
    opacity: 0.9;
}

.dashboard-card:hover .icon-lg {
    transform: scale(1.2);
    opacity: 1;
    transition: all 0.3s ease-in-out;
}

/* Text styles */
.dashboard-card h5 {
    font-size: 1.1rem;
    font-weight: bold;
    margin-bottom: 10px;
    text-transform: uppercase;
}

.dashboard-card h2 {
    font-size: 2rem;
    font-weight: bold;
    margin: 0;
}

/* Margin between cards */
.row.g-4 > .col-md-4 {
    margin-bottom: 20px;
}

/* Responsive adjustments */
@media (max-width: 768px) {
    .icon-lg {
        font-size: 2.5rem;
    }

    .dashboard-card h2 {
        font-size: 1.5rem;
    }
}

</style>
@section('content')
<div class="container-fluid py-4">
    <div class="row mb-4">
        <div class="col-12">
            <h3 class="text-center text-uppercase font-weight-bold">Thống kê hệ thống</h3>
        </div>
    </div>

    <div class="row g-4">
        <!-- Doanh Thu -->
        <div class="col-md-4">
            <div class="card dashboard-card bg-primary text-white shadow h-100">
                <div class="card-body text-center">
                    <i class="bi bi-currency-dollar icon-lg mb-3"></i>
                    <h5 class="text-uppercase">Doanh Thu</h5>
                    <h2 class="font-weight-bold">{{ number_format($totalPrice) }} VNĐ</h2>
                </div>
            </div>
        </div>

        <!-- Tổng số đơn hàng -->
        <div class="col-md-4">
            <div class="card dashboard-card bg-info text-white shadow h-100">
                <div class="card-body text-center">
                    <i class="bi bi-cart-check icon-lg mb-3"></i>
                    <h5 class="text-uppercase">Tổng Số Đơn Hàng</h5>
                    <h2 class="font-weight-bold">{{ $totalOrder }} Đơn</h2>
                </div>
            </div>
        </div>

        <!-- Đơn Đã Thanh Toán -->
        <div class="col-md-4">
            <div class="card dashboard-card bg-success text-white shadow h-100">
                <div class="card-body text-center">
                    <i class="bi bi-credit-card icon-lg mb-3"></i>
                    <h5 class="text-uppercase">Đơn Đã Thanh Toán</h5>
                    <h2 class="font-weight-bold">{{ $done }} Đơn</h2>
                </div>
            </div>
        </div>

        <!-- Đơn Đã Giao -->
        <div class="col-md-4">
            <div class="card dashboard-card bg-success text-white shadow h-100">
                <div class="card-body text-center">
                    <i class="bi bi-truck icon-lg mb-3"></i>
                    <h5 class="text-uppercase">Đơn Đã Giao</h5>
                    <h2 class="font-weight-bold">{{ $delivered }} Đơn</h2>
                </div>
            </div>
        </div>

        <!-- Đơn Đang Giao -->
        <div class="col-md-4">
            <div class="card dashboard-card bg-warning text-white shadow h-100">
                <div class="card-body text-center">
                    <i class="bi bi-clock icon-lg mb-3"></i>
                    <h5 class="text-uppercase">Đơn Đang Giao</h5>
                    <h2 class="font-weight-bold">{{ $delivering }} Đơn</h2>
                </div>
            </div>
        </div>

        <!-- Đơn Chờ Xác Nhận -->
        <div class="col-md-4">
            <div class="card dashboard-card bg-secondary text-white shadow h-100">
                <div class="card-body text-center">
                    <i class="bi bi-hourglass-split icon-lg mb-3"></i>
                    <h5 class="text-uppercase">Đơn Chờ Xác Nhận</h5>
                    <h2 class="font-weight-bold">{{ $handing }} Đơn</h2>
                </div>
            </div>
        </div>

        <!-- Đơn Hủy -->
        <div class="col-md-4">
            <div class="card dashboard-card bg-danger text-white shadow h-100">
                <div class="card-body text-center">
                    <i class="bi bi-x-circle icon-lg mb-3"></i>
                    <h5 class="text-uppercase">Đơn Hủy</h5>
                    <h2 class="font-weight-bold">{{ $cancelorder }} Đơn</h2>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
