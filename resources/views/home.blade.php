@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="row g-5">
                <div class="col-md-8 order-md-last">
                    <h4 class="d-flex justify-content-between align-items-center mb-3">
                        <span class="text-primary">Productos</span>
                    </h4>
                    <ul class="list-group mb-3">
                        @foreach ($products as $product)
                            <product-item :name="{{json_encode($product->nombre)}}" :description="{{json_encode($product->descripcion)}}"
                                :price="{{json_encode($product->precio)}}"></product-item>
                        @endforeach
                    </ul>
                    {{ $products->withQueryString()->links("pagination::bootstrap-4") }}
                </div>
                <div class="col-md-4">
                    <h4 class="mb-3">Filtros</h4>
                    <form class="needs-validation" novalidate="" action="{!! route('home') !!}" >
                        @csrf
                        <div class="row g-3">
                            <div class="col-sm-12">
                                <label for="firstName" class="form-label">Nombre</label>
                                <input type="text" class="form-control" id="firstName" name="product_name"
                                    value={{ $product_keyword }} >
                                <div class="col-md-6">
                                    <label for="price_range_min" class="form-label">Precio Minimo</label>
                                    <input type="number" class="form-control" id="price_range_min" min="0"
                                        name="price_range_min" value={{ $product_price_min }} >
                                </div>
                                <div class="col-md-6">
                                    <label for="price_range_max" class="form-label">Precio Máximo</label>
                                    <input type="number" class="form-control" id="price_range_max" min="0"
                                        name="price_range_max" value={{ $product_price_max }} >
                                    <div class="invalid-feedback">
                                        Please select prices.
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr class="my-4">
                        <button class="w-100 btn btn-primary btn-lg" type="submit">Filtrar</button>
                    </form>
                  </form>
                </div>
              </div>
        </div>
    </div>
</div>
@endsection
