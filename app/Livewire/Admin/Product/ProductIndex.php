<?php

namespace App\Livewire\Admin\Product;

use Livewire\Attributes\Url;
use Livewire\Component;
use Livewire\WithPagination;
use Modules\Shop\Entities\Product;

class ProductIndex extends Component
{
    use WithPagination;

    public $perPage = 10;

    #[Url(as: 'q')]
    public ?string $search = '';

    protected $queryString = [
        'search' => ['except' => ''],
        'perPage' => ['except' => 10], // Agar nilai tetap tersimpan di URL
    ];

    public function updatingSearch()
    {
        $this->resetPage();
    }

    public function updatingPerPage()
    {
        $this->resetPage();
    }

    public function render()
    {
        $products = Product::query()
            ->when(
                $this->search,
                fn($query) =>
                $query->where('name', 'LIKE', '%' . $this->search . '%')
            )
            ->orderBy('created_at', 'desc')
            ->paginate($this->perPage)
            ->withQueryString();

        return view('livewire.admin.product.product-index', compact('products'));
    }

    public function delete($id)
    {
        if ($product = Product::find($id)) {
            $product->delete();
            session()->flash('success', 'Product deleted!');
        } else {
            session()->flash('error', 'Product not found.');
        }
    }

    public function changePerPage($perPage)
    {
        $this->perPage = max(5, min($perPage, 25)); // Batas antara 5-25
        $this->resetPage();
    }
}
