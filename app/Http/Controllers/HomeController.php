<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     * with Product list and filters
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index(Request $request)
    {
        $query = \App\Models\Product::orderBy('nombre', 'ASC');
        $product_keyword = $request->product_name;
        $product_price_min = $request->price_range_min;
        $product_price_max = $request->price_range_max;
        if ($product_keyword) $query = $query->where('nombre', 'LIKE', '%'. $product_keyword .'%');
        if ($product_price_min) $query = $query->where('precio', '>=', $product_price_min);
        if ($product_price_max) $query = $query->where('precio', '<=', $product_price_max);
        $products = $query->paginate(15);
        return view('home', compact('products', 'product_keyword', 'product_price_min', 'product_price_max'));
    }
}
