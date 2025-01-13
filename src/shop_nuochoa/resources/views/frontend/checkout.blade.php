@extends('layouts.front')

@section('title')
    Thanh Toán
@endsection

@section('content')


    <div class="container mt-3">
        <form action="{{ url('place-order') }}" method="POST">
            {{ csrf_field() }}
            <div class="row">
                <div class="col-md-7">
                    <div class="card">
                        <div class="card-body">
                            <h3>Thông tin đặt hàng</h3>
                            <hr>
                            @if (Auth::check())
                            <div class="row checkout-form">
                                <div class="col-md-6">
                                    <b style="font-size: 18px;" for="">Họ </b>
                                    <input style="font-size: 22px;" type="text" class="form-control" value="{{ Auth::user()->lname }}" name="fname" placeholder="Nhập Họ">
                                </div>

                                <div class="col-md-6">
                                    <label style="font-size: 18px;" for="">Tên</label>
                                    <input style="font-size: 22px;" type="text" class="form-control" value="{{ Auth::user()->name }}" name="lname" placeholder="Nhập Tên">
                                </div>

                                <div class="col-md-6 mt-3">
                                    <label style="font-size: 18px;" for="">Email</label>
                                    <input style="font-size: 22px;" type="text" class="form-control" value="{{ Auth::user()->email }}" name="email" placeholder="Nhập Email">
                                </div>

                                <div class="col-md-6 mt-3">
                                    <label style="font-size: 18px;" for="">Số Điện Thoại</label>
                                    <input style="font-size: 22px;" type="text" class="form-control" value="{{ Auth::user()->phone }}" name="phone" required placeholder="Nhập Số Điện Thoại">
                                </div>

                                <div class="col-md-6 mt-3">
                                    <label style="font-size: 18px;" for="">Địa Chỉ 1</label>
                                    <input style="font-size: 22px;" type="text" class="form-control" value="{{ Auth::user()->address1 }}" required name="address1" placeholder="Nhập Địa Chỉ 1">
                                </div>

                                <div class="col-md-6 mt-3">
                                    <label style="font-size: 18px;" for="">Địa Chỉ 2</label>
                                    <input style="font-size: 22px;" type="text" class="form-control" value="{{ Auth::user()->address2 }}" required name="address2" placeholder="Nhập Địa Chỉ 2">
                                </div>

                                <div class="col-md-6 mt-3">
                                    <label style="font-size: 18px;" for="">Thành Phố</label>
                                    <input style="font-size: 22px;" type="text" class="form-control" value="{{ Auth::user()->city }}" required name="city" placeholder="Nhập Tên Thành Phố">
                                </div>

                                <div class="col-md-6 mt-3">
                                    <label style="font-size: 18px;" for="">Tỉnh</label>
                                    <input style="font-size: 22px;" type="text" class="form-control" value="{{ Auth::user()->state }}" required name="state" placeholder="Nhập Tỉnh">
                                </div>

                                <div class="col-md-6 mt-3">
                                    <label style="font-size: 18px;" for="">Quốc Gia</label>
                                    <input style="font-size: 22px;" type="text" class="form-control" value="{{ Auth::user()->country }}" required name="country" placeholder="Nhập Quốc Gia">
                                </div>

                                {{-- <div class="col-md-6 mt-3">
                                    <label for="">Nhập mã PIN</label>
                                    <input type="text" class="form-control" value="{{ Auth::user()->pincode }}" required name="pincode" placeholder="Nhập Mã PIN">
                                </div> --}}

                            </div>
                            @else
                            <div class="row checkout-form">
                                <div class="col-md-6">
                                    <label style="font-size: 18px;" for="">Họ</label>
                                    <input style="font-size: 22px;" type="text" class="form-control" value="" name="name" placeholder="Nhập Họ">
                                </div>

                                <div class="col-md-6">
                                    <label style="font-size: 18px;" for="">Tên</label>
                                    <input style="font-size: 22px;" type="text" class="form-control" value="" name="lname" placeholder="Nhập Tên">
                                </div>

                                <div class="col-md-6 mt-3">
                                    <label style="font-size: 18px;" for="">Email</label>
                                    <input style="font-size: 22px;" type="text" class="form-control" value="" name="email" placeholder="Nhập Email">
                                </div>

                                <div class="col-md-6 mt-3">
                                    <label style="font-size: 18px;" for="">Số Điện Thoại</label>
                                    <input style="font-size: 22px;" type="text" class="form-control" value="" name="phone" required placeholder="Nhập Số Điện Thoại">
                                </div>

                                <div class="col-md-6 mt-3">
                                    <label style="font-size: 18px;" for="">Địa Chỉ 1</label>
                                    <input style="font-size: 22px;" type="text" class="form-control" value="" required name="address1" placeholder="Nhập Địa Chỉ 1">
                                </div>

                                <div class="col-md-6 mt-3">
                                    <label style="font-size: 18px;" for="">Địa Chỉ 2</label>
                                    <input style="font-size: 22px;" type="text" class="form-control" value="" required name="address2" placeholder="Nhập Địa Chỉ 2">
                                </div>

                                <div class="col-md-6 mt-3">
                                    <label style="font-size: 18px;" for="">Thành Phố</label>
                                    <input style="font-size: 22px;" type="text" class="form-control" value="" required name="city" placeholder="Nhập Tên Thành Phố">
                                </div>

                                <div class="col-md-6 mt-3">
                                    <label style="font-size: 18px;" for="">Tỉnh</label>
                                    <input style="font-size: 22px;" type="text" class="form-control" value="" required name="state" placeholder="Nhập Tỉnh">
                                </div>

                                <div class="col-md-6 mt-3">
                                    <label style="font-size: 18px;" for="">Quốc Gia</label>
                                    <input style="font-size: 22px;" type="text" class="form-control" value="" required name="country" placeholder="Nhập Quốc Gia">
                                </div>

                                {{-- <div class="col-md-6 mt-3">
                                    <label for="">Nhập mã PIN</label>
                                    <input type="text" class="form-control" value="{{ Auth::user()->pincode }}" required name="pincode" placeholder="Nhập Mã PIN">
                                </div> --}}

                            </div> 
                            @endif
                            
                        </div>
                    </div>
                </div>

                <div class="col-md-5">
                    <div class="card">
                        <div class="card-body">
                            <h3>Chi tiết đơn hàng</h3>
                            <hr>
                            <table class="table table-striped table-bordered">
                                <thead>
                                    <tr>
                                        <th style="font-size: 18px;"> Tên hàng </th>
                                        <th style="font-size: 18px;"> Số Lượng </th>
                                        <th style="font-size: 18px;"> Giá </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @php
                                        $total = 0;
                                    @endphp
                                    @foreach($cartitems as $item)
                                        <tr>
                                            <td style="font-size: 18px;"> {{ $item->products->name }} </td>
                                            <td style="font-size: 18px;"> {{ $item->prod_qty }} </td>
                                            <td style="font-size: 18px;"> 
                                                {{ number_format($item->products->selling_price) }} VNĐ
                                                @php
                                                    $total += $item->products->selling_price * $item->prod_qty;
                                                @endphp
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                            <hr>
                            {{-- Tổng thanh toán --}}
                            @if ($total > 0)
                                <h4>Tổng Thanh Toán: <b style="color:green;"><i> {{ number_format($total) }}  </i></b> VNĐ</h4>
                            @endif 
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="col-md-7 mt-3">            
                                        <label style="font-size:18px;" class="mt-3" for="payment_type"><b>Hình Thức Thanh Toán</b></label>
                                        <select class="form-select mt-1" aria-label="Default select example" name="payment_type">
                                            {{-- <option selected>Chọn Hình Thức Thanh Toán</option> --}}
                                            <option value="COD">Thanh Toán Khi Nhận Hàng</option>
                                            <option value="VNP">Thanh Toán Bằng Ví VNPAY</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <button type="submit" class="btn btn-primary mt-5 float-end">Đặt Hàng</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>

    </div>
    @include('layouts.inc.footer')
@endsection