@extends('layouts.front')

@section('title')
    Chi Tiết Đơn Hàng 
@endsection

@section('content')


    <div class="container py-5">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header bg-primary">
                        <h4 class="text-white">Chi tiết đơn hàng {{ $orders->tracking_no }}
                            <a href="{{ url('my-orders') }}" class="btn btn-warning text-white float-end"> Trở Lại</a>
                        </h4>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-6 order-details">
                                <h4> Chi tiết Vận Chuyển</h4>
                                <hr>
                                <label style="font-size: 17px;" for="">Họ</label>
                                <div style="font-size: 22px;" class="border">{{ $orders->fname }}</div> <br>
                                <label style="font-size: 17px;" for="">Tên</label>
                                <div style="font-size: 22px;" class="border">{{ $orders->lname }}</div> <br>
                                <label style="font-size: 17px;" for="">Email</label>
                                <div style="font-size: 22px;" class="border">{{ $orders->email }}</div> <br>
                                <label style="font-size: 17px;" for="">Số Điện Thoại</label>
                                <div style="font-size: 22px;" class="border">{{ $orders->phone }}</div> <br>
                                <label style="font-size: 17px;" for="">Địa Chỉ Giao Hàng</label>
                                <div style="font-size: 20px;" class="border">
                                    Địa Chỉ 1: <i>{{ $orders->address1 }},</i> <br>
                                    Địa Chỉ 2: <i>{{ $orders->address2 }},</i> <br>
                                    Thành Phố: <i>{{ $orders->city }},</i> <br> 
                                    Tỉnh: <i>{{ $orders->state }}</i> <br>                                                                    
                                    Quốc Gia: <i>{{ $orders->country }}</i>
                                </div>
                                {{-- <label for="">Zip Code</label>
                                <div class="border">{{ $orders->pincode }}</div> --}}
                            </div>
                            <div class="col-md-6">
                                <h4>Sản Phẩm</h4>
                                <hr>
                                <table class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th>Tên Sản Phẩm</th>
                                            <th>Số Lượng</th>
                                            <th>Giá</th>
                                            <th>Hình Ảnh</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach($orders->orderitems as $item)
                                        
                                            <tr>
                                                <td style="font-size: 18px;">{{ $item->products->name }} </td>
                                                <td style="font-size: 18px;">{{ $item->qty }} </td>
                                                <td style="font-size: 18px;">{{ number_format($item->price) }} VNĐ </td>
                                                <td>
                                                    <img src="{{ asset('assets/uploads/products/'.$item->products->image) }}" width="50px" alt="Ảnh Sản Phẩm">
                                                </td>
                                            </tr> 
                
                                        @endforeach
                                    </tbody>
                                </table>
                                <h4 class="px-2"> Tổng Thanh Toán: <span style="color:green; font-size: 27px;" class="float-end">{{ number_format($orders->total_price) }} VNĐ</span></h4>
                            </div>
                        </div>
                        
                    </div>
                </div>
                
            </div>
        </div>
    </div>

    @include('layouts.inc.footer')
@endsection