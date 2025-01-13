@extends('layouts.front')

@section('title')
    Chi tiết đơn hàng
@endsection

@section('content')
    <div class="container py-5">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header bg-primary">
                        <h4 class="text-white">Đơn hàng {{$orders->tracking_no}}
                            <a href="{{ url()->previous() }}" class="btn btn-warning text-white float-end"> Trở Lại</a>
                        </h4>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-6 order-details">
                                <h4> Chi tiết Vận Chuyển</h4>
                                <hr>
                                <label style="font-size: 16px" for="">Họ</label>
                                <div style="font-size: 20px" class="border">{{ $orders->fname }}</div> <br>
                                <label style="font-size: 16px" for="">Tên</label>
                                <div style="font-size: 20px" class="border">{{ $orders->lname }}</div> <br>
                                <label style="font-size: 16px" for="">Email</label>
                                <div style="font-size: 20px" class="border">{{ $orders->email }}</div> <br>
                                <label style="font-size: 16px" for="">Số Điện Thoại</label>
                                <div style="font-size: 20px" class="border">{{ $orders->phone }}</div> <br>
                                <label style="font-size: 16px" for="">Địa Chỉ Giao Hàng</label>
                                <div style="font-size: 20px" class="border">
                                Địa Chỉ 1: <i>{{ $orders->address1 }},</i> <br>
                                Địa Chỉ 2: <i>{{ $orders->address2 }},</i> <br>
                                Thành Phố: <i>{{ $orders->city }}, </i><br>
                                Tỉnh: <i>{{ $orders->state }} </i><br>
                                Quốc Gia: {{ $orders->country }}
                                </div> <br>
                                <label style="font-size: 16px" for="">Hình Thức Đặt Hàng: </label>
                                <div style="font-size: 20px" class="border">
                                    @if ($orders->message == 'COD') 
                                        Thanh Toán Khi Nhận Hàng
                                    @elseif ($orders->message == 'VNP') 
                                        Ví Điện Tử VNPay
                                    @endif
                                </div>
                                
                            </div>
                            <div class="col-md-6">
                                <h4>Chi Tiết Đơn Hàng</h4>
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
                                                <td style="font-size:18px;">{{ $item->products->name }} </td>
                                                <td style="font-size:18px;">{{ $item->qty }} </td>
                                                <td style="font-size:18px;">{{ number_format($item->price) }} VNĐ </td>
                                                <td>
                                                    <img src="{{ asset('assets/uploads/products/'.$item->products->image) }}" width="50px" alt="Ảnh Sản Phẩm">
                                                </td>
                                            </tr> 
                
                                        @endforeach
                                    </tbody>
                                </table>
                                <h4 class="px-2"> Tổng Cộng: <span style="font-size:25px;" class="float-end">{{ number_format($orders->total_price) }} VNĐ </span></h4>
                                <br><div class="mt-5 px-2">
                                    <h4 style="font-size:;" for=""> Trạng Thái Đơn Hàng</h4>
                                    <form action="{{ url('update-order/'.$orders->id) }}" method="POST">
                                        @csrf
                                        @method('PUT')
                                        <select class="form-select" name="order_status" >
                                            @if($orders->status == '0')
                                            <option {{ $orders->status == '0'? 'selected':'' }} value="0"> Chưa Xử Lý </option>
                                            @endif
                                            
                                            @if($orders->status == '3' || ($orders->status == '1'  && $orders->message == 'COD'))
                                            <option {{ $orders->status == '3'? 'selected':'' }} value="3"> Đã Thanh Toán </option>
                                            @endif

                                            @if($orders->status == '0' || $orders->status == '1' || ($orders->status == '3' && $orders->message != 'COD'))
                                            <option {{ $orders->status == '1'? 'selected':'' }} value="1"> Đang Giao Hàng </option>
                                            @endif

                                            @if($orders->status == '2' || ($orders->status == '1'  && $orders->message != 'COD') 
                                                                        || ($orders->status == '3' && $orders->message == 'COD'))
                                            <option {{ $orders->status == '2'? 'selected':'' }} value="2"> Đã Giao Hàng </option>
                                            
                                            @endif

                                            @if($orders->status != '2')
                                            <option {{ $orders->status == '-1'? 'selected':'' }} value="-1"> Hủy đơn hàng </option>
                                            @endif
                                        </select>
                                        
                                        @if($orders->status != '2' && $orders->status != '-1')
                                        <button type="submit" class="btn btn-primary float-end mt-3"> Cập Nhật </button>
                                        @endif

                                        @if($orders->status == '2' )
                                            <a href="#" class="btn btn-primary float-end mt-3">In Hóa Đơn</a>
                                        @endif

                                    </form>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                </div>
                
            </div>
        </div>
    </div>


@endsection