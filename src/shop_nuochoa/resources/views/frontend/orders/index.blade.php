@extends('layouts.front')

@section('title')
    Đơn Đặt Hàng Của Tôi
@endsection

@section('content')


    <div class="container py-5">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header text-primary">
                        <h4>Đơn Hàng Của Tôi</h4>
                    </div>
                    <div class="card-body">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>Ngày Đặt Hàng</th>
                                    <th>Tracking Number</th>
                                    <th>Tổng Tiền</th>
                                    <th>Trạng Thái</th>
                                    <th>Xử Lý</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($orders as $item)
                                
                                    <tr>
                                        <td>{{ date('d-m-Y', strtotime($item->created_at)) }}</td>
                                        <td>{{ $item->tracking_no }}</td>
                                        <td>{{ number_format($item->total_price) }}VNĐ</td>
                                        <td>
                                            @if ($item->status == '0') 
                                                <i style="color:black;">Chờ Xử Lý</i>
                                            @elseif ($item->status == '3') 
                                                <b style="color:orange;">Đã Thanh Toán</b>
                                            @elseif ($item->status == '1') 
                                                <b style="color:#2196f3;">Đang Giao Hàng</b>
                                            @elseif ($item->status == '2') 
                                                <b style="color:green;">Giao Hàng Thành Công</b>
                                            @elseif ($item->status == '-1') 
                                                <b style="color:red;">Đã Hủy</b>
                                            @endif
                                        </td>
                                        <td>
                                            <a href="{{ url('view-order/'.$item->id)}}" class="btn btn-primary">Xem</a>
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

    @include('layouts.inc.footer')
@endsection

