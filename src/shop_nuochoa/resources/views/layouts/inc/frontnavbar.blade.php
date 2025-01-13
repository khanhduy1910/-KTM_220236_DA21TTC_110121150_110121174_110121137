<!-- Topbar Start -->
<div class="container-fluid border-bottom d-none d-lg-block">
  <div class="row gx-0">
      <div class="col-lg-4 text-center py-2">
          <div class="d-inline-flex align-items-center">
              <i class="bi bi-geo-alt fs-1 text-primary me-3"></i>
              <div class="text-start">
                  <h6 class="text-uppercase mb-1">Địa chỉ cửa hàng</h6>
                  <span>123 Nguyễn Thiện Thành, P5, Trà Vinh</span>
              </div>
          </div>
      </div>
      <div class="col-lg-4 text-center border-start border-end py-2">
          <div class="d-inline-flex align-items-center">
              <i class="bi bi-envelope-open fs-1 text-primary me-3"></i>
                <a href="{{url('views.interact.contact')}}">
                  <div class="text-start">
                      <h6 class="text-uppercase mb-1">Liên hệ</h6>
                      <span>3aeperfumeshop@gmail.com</span>
                  </div>
                </a>
          </div>
      </div>
      <div class="col-lg-4 text-center py-2">
          <div class="d-inline-flex align-items-center">
              <i class="bi bi-phone-vibrate fs-1 text-primary me-3"></i>
              <div class="text-start">
                  <h6 class="text-uppercase mb-1">Gọi cho chúng tôi</h6>
                  <span>01234 01234</span>
              </div>
          </div>
      </div>
  </div>
</div>
{{-- End Topbar --}}

<nav class="navbar navbar-expand-lg navbar-light bg-light small-text">
  {{-- <div class="container"> --}}
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <a style="padding: 15px" class="navbar-brand" href="{{ url('/dashboard') }}"><img src="{{asset('assets/images/logo.gif')}}" alt="Logo đầu trang"/></a>

    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse " id="navbarNavAltMarkup">
      <div class="navbar-nav ms-auto ">
        
      <form action="{{url('timkiem')}}" method="POST" class="d-flex align-items-center mx-auto" style="max-width: 250px; width: 100%;">
    @csrf
    <div class="input-group">
        <input type="text" 
               name="keywords_submit" 
               class="form-control border-light shadow-sm" 
               placeholder="Tìm kiếm sản phẩm..." 
               value="{{ $keywords ?? '' }}" 
               required 
               style="border-radius: 10px 0 0 10px; height: 38px; padding-left: 15px; background-color:rgb(221, 238, 255);">
        <button class="btn btn-light border shadow-sm px-3" 
                type="submit" 
                style="border-radius: 0 10px 10px 0; height: 38px;">
            <i class="fa fa-search"></i>
        </button>
    </div>
</form>

        <a  class="nav-link active" aria-current="page" href="{{ url('/home') }}">Trang Chủ</a>

        <a  class="nav-link" href="{{ url('category')}}">Danh Mục</a>
     
        <a  class="nav-link" href="{{ url('allprod')}}">Sản phẩm</a>
      
        <a  class="nav-link" href="{{ url('quotation')}}">Bảng Báo Giá</a>

        <a  class="nav-link" href="{{ url('my-orders' )}}">Đơn Hàng</a>

        <a class="nav-link" href="{{ url('cart' )}}">
          <i style="font-size: 30px;" class="fa fa-shopping-cart"></i>
          <span class="badge badge-pill bg-primary cart-count">0</span>
        </a>

        <a class="nav-link" href="{{ url('wishlist' )}}">
          <i style="font-size: 30px;" class="fa fa-heart"></i>
          <span class="badge badge-pill bg-success wishlist-count">0</span>
        </a>

        {{-- @guest
            @if (Route::has('login'))
                <li class="nav-item">
                  <a class="nav-link" href="{{ route('login') }}"> {{__('Đăng Nhập')}} </a>
                </li>
            @endif

            @if (Route::has('register'))
                <li class="nav-item">
                  <a class="nav-link" href="{{ route('register') }}"> {{__('Đăng Ký')}} </a>
                </li>
            @endif

            @else
                <li>
                  
                </li>

        @endguest --}}

        @if (Route::has('login'))
            <!-- <div class="hidden fixed top-0 right-0 px-6 py-4 sm:block"> -->
                @auth
                <a href="{{url('infor')}}" class="nav-link active">Xin Chào, {{ Auth::user()->name }}</a>
                <a style="color: red;" href="{{ route('logout') }}" class="nav-link underline" 
                    onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                                        <b>{{ __('Đăng Xuất') }}</b>
                </a>
                <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                    @csrf
                </form>
              
                @else
                    <a href="{{ route('login') }}" class="nav-link underline" >Đăng Nhập</a>

                    @if (Route::has('register'))
                        <a href="{{ route('register') }}" class="nav-link underline">Đăng Ký</a>
                    @endif
                @endauth
            <!-- </div> -->
        @endif

      </div>
    </div>
  {{-- </div> --}}
</nav>