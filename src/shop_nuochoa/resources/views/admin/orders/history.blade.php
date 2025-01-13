@extends('layouts.admin')

<title>Lịch sử đơn hàng</title>

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header bg-primary">
                        <h4 class="text-white">Lịch Sử Đơn Hàng
                        <a href="{{ 'orders' }} " class="btn btn-warning float-right"> Đơn Hàng Mới</a>
                    </h4>
                </div>
                    <div class="card-body">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>Ngày Đặt Hàng</th>
                                    <th>Tracking Number</th>
                                    <th>Tổng Tiền</th>
                                    <th>Trạng Thái</th>
                                    <th>Hình Thức Thanh Toán</th>
                                    <th>Xử Lý</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($orders as $item)

                                    <tr>
                                        <td>{{ date('d-m-Y', strtotime($item->created_at)) }}</td>
                                        <td>{{ $item->tracking_no }}</td>
                                        <td>{{ number_format($item->total_price) }} VNĐ </td>
                                        <td>
                                            @if ($item->status == '0') 
                                            <i style="color:black;">Chưa Xử Lý</i>
                                            @elseif ($item->status == '3') 
                                            <b style="color:orange;">Đã Thanh Toán</b>
                                            @elseif ($item->status == '1') 
                                            <b style="color:#2196f3;">Đang Giao Hàng</b>
                                            @elseif ($item->status == '2') 
                                            <b style="color:green;">Đã Giao Hàng</b>
                                            @elseif ($item->status == '-1') 
                                            <b style="color:red;">Đã Hủy</b>
                                            @endif
                                        </td>
                                        <td>
                                            @if ($item->status == '-1')
                                                Đã Hủy
                                            @elseif ($item->status == '2' && $item->message == 'COD') 
                                                Tiền mặt
                                            @elseif ($item->message == 'COD') 
                                                Thanh Toán Khi Nhận Hàng
                                            @elseif ($item->message == 'VNP') 
                                                Ví Điện Tử VNPay
                                            @endif
                                        </td>
                                        <td>
                                            <a href="{{ url('admin/view-order/'.$item->id)}}" class="btn btn-primary">Xem</a>
                                        </td>
                                    </tr> 
        
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
@endsection