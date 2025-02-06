<?php

namespace Modules\Shop\Http\Controllers;

use Illuminate\Contracts\Support\Renderable;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Http;
use Modules\Shop\Repositories\Front\Interfaces\AddressRepositoryInterface;
use Modules\Shop\Repositories\Front\Interfaces\CartRepositoryInterface;
use Modules\Shop\Repositories\Front\Interfaces\OrderRepositoryInterface;

class OrderController extends Controller
{
    protected $addressRepository;
    protected $cartRepository;
    protected $orderRepository;

    public function __construct(AddressRepositoryInterface $addressRepository, CartRepositoryInterface $cartRepository, OrderRepositoryInterface $orderRepository)
    {
        $this->addressRepository = $addressRepository;
        $this->cartRepository = $cartRepository;
        $this->orderRepository = $orderRepository;
    }

    public function checkout()
    {
        $this->data['cart'] = $this->cartRepository->findByUser(auth()->user());
        $this->data['addresses'] = $this->addressRepository->findByUser(auth()->user());

        return $this->loadTheme('orders.checkout', $this->data);
    }

    public function store(Request $request)
    {
        $address = $this->addressRepository->findByID($request->get('address_id'));
        $cart = $this->cartRepository->findByUser(auth()->user());
        $selectedShipping = $this->getSelectedShipping($request);

        DB::beginTransaction();
        try {
            $order = $this->orderRepository->create($request->user(), $cart, $address, $selectedShipping);
            DB::commit();
        } catch (\Exception $e) {
            DB::rollBack();
            throw $e;
        }

        $this->cartRepository->clear(auth()->user());

        return redirect($order->payment_url);
    }

    private function getSelectedShipping(Request $request)
    {
        $address = $this->addressRepository->findByID($request->get('address_id'));
        $cart = $this->cartRepository->findByUser(auth()->user());

        if (!$address || !$cart) {
            return [
                'delivery_package' => $request->get('delivery_package'),
                'courier' => $request->get('courier'),
                'shipping_fee' => 0,
            ];
        }

        $availableServices = $this->calculateShippingFee($cart, $address, $request->get('courier'));
        $selectedPackage = collect($availableServices)->firstWhere('service', $request->get('delivery_package'));

        return [
            'delivery_package' => $request->get('delivery_package'),
            'courier' => $request->get('courier'),
            'shipping_fee' => $selectedPackage['cost'] ?? 0,
        ];
    }

    public function shippingFee(Request $request)
    {
        $address = $this->addressRepository->findByID($request->get('address_id'));
        $cart = $this->cartRepository->findByUser(auth()->user());

        $availableServices = $this->calculateShippingFee($cart, $address, $request->get('courier'));
        return $this->loadTheme('orders.available_services', ['services' => $availableServices]);
    }

    public function choosePackage(Request $request)
    {
        $address = $this->addressRepository->findByID($request->get('address_id'));
        $cart = $this->cartRepository->findByUser(auth()->user());

        $availableServices = $this->calculateShippingFee($cart, $address, $request->get('courier'));
        $selectedPackage = collect($availableServices)->firstWhere('service', $request->get('delivery_package'));

        return [
            'shipping_fee' => number_format($selectedPackage['cost'] ?? 0),
            'grand_total' => number_format($cart->grand_total + ($selectedPackage['cost'] ?? 0)),
        ];
    }

    private function calculateShippingFee($cart, $address, $courier)
    {
        try {
            $response = Http::withHeaders([
                'key' => env('API_ONGKIR_KEY'),
            ])->post(env('API_ONGKIR_BASE_URL') . 'cost', [
                'origin' => env('API_ONGKIR_ORIGIN'),
                'destination' => $address->city,
                'weight' => $cart->total_weight,
                'courier' => $courier,
            ]);

            $shippingFees = json_decode($response->getBody(), true);
        } catch (\Exception $e) {
            return [];
        }

        return collect($shippingFees['rajaongkir']['results'] ?? [])->flatMap(function ($cost) use ($courier, $address) {
            return collect($cost['costs'] ?? [])->map(function ($costDetail) use ($courier, $address) {
                return [
                    'service' => $costDetail['service'],
                    'description' => $costDetail['description'],
                    'etd' => $costDetail['cost'][0]['etd'] ?? 'N/A',
                    'cost' => $costDetail['cost'][0]['value'] ?? 0,
                    'courier' => $courier,
                    'address_id' => $address->id,
                ];
            });
        })->all();
    }
}
