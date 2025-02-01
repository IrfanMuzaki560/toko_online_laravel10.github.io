@extends('themes.indotoko.layouts.app')
@include('themes.indotoko.shared.slider')
@section('content')

<!-- Popular -->
<section class="popular">
  <div class="container">
    <div class="row align-items-center">
      <div class="col-6">
        <h1>Popular</h1>
      </div>
      <div class="col-6 text-end">
        <a href="#" class="btn-first">View All</a>
      </div>
    </div>
    <div class="row mt-5">
      <div class="col-lg-3 col-6">
        <div class="card card-body p-lg-4 p3">
          <a href="#"><img src="{{ asset('themes/indotoko/assets/img/shop_01.jpg') }}" alt="" class="img-fluid"></a>
          <h3 class="product-name mt-3">JONTOR GUMMY CANDY 15X24</h3>
          <div class="rating">
            <i class="bx bxs-star"></i>
            <i class="bx bxs-star"></i>
            <i class="bx bxs-star"></i>
            <i class="bx bxs-star"></i>
            <i class="bx bxs-star"></i>
          </div>
          <div class="detail d-flex justify-content-between align-items-center mt-4">
              <p class="price">IDR 298.890</p>
              <a href="#" class="btn-cart"><i class="bx bx-cart-alt"></i></a>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-6">
        <div class="card card-body p-lg-4 p3">
          <a href="#"><img src="{{ asset('themes/indotoko/assets/img/shop_02.jpg') }}" alt="" class="img-fluid"></a>
          <h3 class="product-name mt-3">REBEN CHOCO EYEGLAS20X40</h3>
          <div class="rating">
            <i class="bx bxs-star"></i>
            <i class="bx bxs-star"></i>
            <i class="bx bxs-star"></i>
            <i class="bx bxs-star"></i>
            <i class="bx bxs-star"></i>
          </div>
          <div class="detail d-flex justify-content-between align-items-center mt-4">
              <p class="price">IDR 370.000</p>
              <a href="#" class="btn-cart"><i class="bx bx-cart-alt"></i></a>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-6 mt-3 mt-lg-0">
        <div class="card card-body p-lg-4 p3">
          <a href="#"><img src="{{ asset('themes/indotoko/assets/img/shop_03.jpg') }}" alt="" class="img-fluid"></a>
          <h3 class="product-name mt-3">BROTATOZ KOREAN BBQ 5X10</h3>
          <div class="rating">
            <i class="bx bxs-star"></i>
            <i class="bx bxs-star"></i>
            <i class="bx bxs-star"></i>
            <i class="bx bxs-star"></i>
            <i class="bx bxs-star"></i>
          </div>
          <div class="detail d-flex justify-content-between align-items-center mt-4">
              <p class="price">IDR 79.000</p>
              <a href="#" class="btn-cart"><i class="bx bx-cart-alt"></i></a>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-6 mt-3 mt-lg-0">
        <div class="card card-body p-lg-4 p3">
          <a href="#"><img src="{{ asset('themes/indotoko/assets/img/shop_04.jpg') }}" alt="" class="img-fluid"></a>
          <h3 class="product-name mt-3">KIKOYA TELUR ASIN 10X10</h3>
          <div class="rating">
            <i class="bx bxs-star"></i>
            <i class="bx bxs-star"></i>
            <i class="bx bxs-star"></i>
            <i class="bx bxs-star"></i>
            <i class="bx bxs-star"></i>
          </div>
          <div class="detail d-flex justify-content-between align-items-center mt-4">
              <p class="price">IDR 80.000</p>
              <a href="#" class="btn-cart"><i class="bx bx-cart-alt"></i></a>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- Latest -->
<section class="latest">
  <div class="container">
    <div class="row align-items-center">
      <div class="col-6">
        <h1>Latest</h1>
      </div>
      <div class="col-6 text-end">
        <a href="#" class="btn-first">View All</a>
      </div>
    </div>
    <div class="row mt-5">
      <div class="col-lg-3 col-6">
        <div class="card card-body p-lg-4 p3">
          <a href="#"><img src="{{ asset('themes/indotoko/assets/img/shop_05.jpg') }}" alt="" class="img-fluid"></a>
          <h3 class="product-name mt-3">KOKOLA KUKIS MAMAH 320GR X 6</h3>
          <div class="rating">
            <i class="bx bxs-star"></i>
            <i class="bx bxs-star"></i>
            <i class="bx bxs-star"></i>
            <i class="bx bxs-star"></i>
            <i class="bx bxs-star"></i>
          </div>
          <div class="detail d-flex justify-content-between align-items-center mt-4">
              <p class="price">IDR 126.360</p>
              <a href="#" class="btn-cart"><i class="bx bx-cart-alt"></i></a>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-6">
        <div class="card card-body p-lg-4 p3">
          <a href="#"><img src="{{ asset('themes/indotoko/assets/img/shop_06.jpg') }}" alt="" class="img-fluid"></a>
          <h3 class="product-name mt-3">KOKOLA BUTTER COOKIES 320GR X 6</h3>
          <div class="rating">
            <i class="bx bxs-star"></i>
            <i class="bx bxs-star"></i>
            <i class="bx bxs-star"></i>
            <i class="bx bxs-star"></i>
            <i class="bx bxs-star"></i>
          </div>
          <div class="detail d-flex justify-content-between align-items-center mt-4">
              <p class="price">IDR 163.800</p>
              <a href="#" class="btn-cart"><i class="bx bx-cart-alt"></i></a>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-6 mt-3 mt-lg-0">
        <div class="card card-body p-lg-4 p3">
          <a href="#"><img src="{{ asset('themes/indotoko/assets/img/shop_07.jpg') }}" alt="" class="img-fluid"></a>
          <h3 class="product-name mt-3">MIKO BANANA ISI 10</h3>
          <div class="rating">
            <i class="bx bxs-star"></i>
            <i class="bx bxs-star"></i>
            <i class="bx bxs-star"></i>
            <i class="bx bxs-star"></i>
            <i class="bx bxs-star"></i>
          </div>
          <div class="detail d-flex justify-content-between align-items-center mt-4">
              <p class="price">IDR 42.025</p>
              <a href="#" class="btn-cart"><i class="bx bx-cart-alt"></i></a>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-6 mt-3 mt-lg-0">
        <div class="card card-body p-lg-4 p3">
          <a href="#"><img src="{{ asset('themes/indotoko/assets/img/shop_08.jpg') }}" alt="" class="img-fluid"></a>
          <h3 class="product-name mt-3">MORRIS WAFER KOTAK VANILA 10X10</h3>
          <div class="rating">
            <i class="bx bxs-star"></i>
            <i class="bx bxs-star"></i>
            <i class="bx bxs-star"></i>
            <i class="bx bxs-star"></i>
            <i class="bx bxs-star"></i>
          </div>
          <div class="detail d-flex justify-content-between align-items-center mt-4">
              <p class="price">IDR 42.025</p>
              <a href="#" class="btn-cart"><i class="bx bx-cart-alt"></i></a>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

@endsection
