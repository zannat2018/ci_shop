<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Order extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->library('cart');
		$this->cart->product_name_safe = FALSE;
		$this->load->model('orders_model');
		clear_cache();

	}

	public function index()
	{
		//
	}

	public function add_to_cart()
	{
		if($this->input->is_ajax_request()) {
			$id = $this->input->post('sku');
			$qty = $this->input->post('qty');
			$product = get_row(TABLE_PRODUCTS, array('sku'=>$id));
			$data = array(
				'id'=> $id,
				'qty'=>$qty,
				'price'=>$product->selling_price,
				'name'=>$product->name,
			);
			if($this->cart->insert($data))
			echo 1;
			else
			echo 0;
		} else
		echo 500;
	}

	public function cart()
	{
		$data['cart'] = $this->cart->contents();
		if(count($this->cart->contents()) < 1)
		redirect('empty-cart');
		$data['total'] =$this->cart->total();
		$this->session->set_userdata('title','Cart');
		$this->load->view('frontend/cart/content', $data);
	}

	public function emptycart()
	{
		if(count($this->cart->contents()) > 0)
		redirect('cart');
		$this->session->set_userdata('title','Empty Cart');
		$this->load->view('frontend/cart/empty');
	}

	public function cartcount()
	{
		echo count($this->cart->contents());
	}

	public function updatecart()
	{
		if($this->input->is_ajax_request()) {
			$rowid = $this->input->post('rowid');
			$qty = $this->input->post('qty');
			$data = array(
				'rowid'=>$rowid,
				'qty'=>$qty
			);
			$this->cart->update($data);
			$cart = $this->cart->contents();
			if($qty == 0)
			$subtotal = 0;
			else
			$subtotal = $cart[$rowid]['subtotal'];
			$total = $this->cart->total();
			echo json_encode(array('message'=>1, 'subtotal'=>currency($subtotal), 'total'=>currency($total)));
		} else {
			echo 500;
		}
	}

	public function checkout($type = '')
	{
		$this->session->set_userdata('title','Checkout');
		$data = $this->input->post();
		unset($data['submit']);

		switch($type) {
			case 'guest':
				if(!$this->input->post('email'))
				redirect('cart');
				$this->session->set_userdata('guest_email', $data['email']);
				$this->load->view('frontend/cart/details');
			break;

			case 'details':
				$this->session->set_userdata($data);
				$data['total'] = $this->cart->total();
				$data['cart'] = $this->cart->contents();
				$this->load->view('frontend/cart/payment', $data);
			break;

			case 'pay_on_delivery':
				$order_total = $this->input->post('order_total');
				unset($data['pay_on_delivery']);
				if($order_id = $this->save_order($order_total, 'pay_on_delivery')){
					send_order_mail($order_id);
					redirect('status/complete');
				} else {
					redirect('shop');
				}

			break;

			case 'pay_online':
				$order_total = $this->input->post('order_total');
				unset($data['pay_online']);
				if($order_id = $this->save_order($order_total, 'online'))
					$this->payment_gateway($order_id);
				else
					redirect('shop');
			break;

			case 'login':
				if(customer_is_logged_in())
					redirect('checkout/customer_is_logged_in');
				$this->form_validation->set_rules('email', 'Email', 'required|valid_email');
				if ($this->form_validation->run() == FALSE) {
					//$this->load->view('frontend/cart/checkout');
					$this->load->view('frontend/cart/payment', $data);
				} else {
					$email = $this->input->post('email');
					$password = $this->input->post('password');
					$customer_id = customer_login($email, $password);
					if($customer_id != 0) {
						$_data = get_row(TABLE_CUSTOMERS, array('id'=>$customer_id));
						$data['address'] = $_data->address;
						$data['city'] = $_data->city;
						$data['area'] = $_data->area;
						$data['contact_person'] = $_data->name;
						$data['phone_1'] = $_data->phone_1;
						$data['phone_2'] = $_data->phone_2;

						$this->session->set_userdata($data);

						$data['total'] = $this->cart->total();
						$data['cart'] = $this->cart->contents();

						$this->load->view('frontend/cart/details', $data);
					} else {
						$this->session->set_userdata('error','Wrong email or password.');
						$this->checkout();
					}
				}
			break;

			case 'customer_is_logged_in':
				$_data = get_row(TABLE_CUSTOMERS, array('id'=>$this->session->userdata('customer_id')));
				if(!$_data)
					redirect('shop');
				$data['address'] = $_data->address;
				$data['city'] = $_data->city;
				$data['area'] = $_data->area;
				$data['contact_person'] = $_data->name;
				$data['phone_1'] = $_data->phone_1;
				$data['phone_2'] = $_data->phone_2;
				$this->session->set_userdata($data);
				$data['total'] = $this->cart->total();
				$data['cart'] = $this->cart->contents();
				$this->load->view('frontend/cart/details', $data);
			break;

			case 'cancel_order':
				$this->destroy_sessions();
				redirect('shop');
			break;

			default:
				$this->load->view('frontend/cart/checkout');
			break;
		}
	}

	public function save_order($order_total = 0, $payment_method = '')
	{
		$_cart = $this->cart->contents();
		$i = 0;
		foreach ($_cart as $item){
			$cart[$i]['sku'] = $item['id'];
			$cart[$i]['qty'] = $item['qty'];
			$cart[$i]['price'] = $item['price'];
			$cart[$i]['name'] = $item['name'];
			$cart[$i]['subtotal'] = $item['subtotal'];
			$i++;
		}

		$data['date'] = date('Y-m-d H:i:s');
		$this->load->helper('string');
		$data['order_number'] = random_string('numeric', 15);

		while(it_exists(TABLE_ORDERS, 'order_number', $data['order_number'])) {
			$data['order_number'] = random_string('numeric', 15);
		}

		$data['details'] = json_encode($cart);
		$data['product_total'] = $this->cart->total();
		$data['positive_charges'] = json_encode(get_charges('credit'));
		$data['negative_charges'] =  json_encode(get_charges('debit'));
		$data['order_total'] = (float)$order_total;

		if(customer_is_logged_in()){
			$data['customer_type'] = 'customer';
			$data['customer_id'] = $this->session->userdata('customer_id');
			$data['guest_email'] = '--';
		}else{
			$data['customer_type'] = 'guest';
			$data['guest_email'] = $this->session->userdata('guest_email');
			$data['customer_id'] = 0;
		}

		$data['payment_method'] = $payment_method;
		$data['delivery_charge'] = $this->session->userdata('delivery_charge');
		$data['status'] = 'pending';
		$order_id = save(TABLE_ORDERS, $data);
		$this->session->set_userdata('order_id', $order_id);
		unset($data);

		$data['order_id'] = $order_id;
		$data['delivery_option'] = $this->session->userdata('delivery_option');
		$data['pickup_station'] = $this->session->userdata('pickup_station');
		$data['address'] = $this->session->userdata('address');
		$data['city'] = $this->session->userdata('city');
		$data['area'] = $this->session->userdata('area');
		$data['contact_person'] = $this->session->userdata('contact_person');
		$data['phone_1'] = $this->session->userdata('phone_1');
		$data['phone_2'] = $this->session->userdata('phone_2');
		$data['delivery_status'] = 'pending';
		$order_delivery_details = save(TABLE_ORDER_DELIVERY_DETAILS, $data);
		unset($data);

		return $order_id;
	}

	//Calls the payment gateway
	public function payment_gateway($order_id)
	{
		//The order row form db.
		$order = get_row(TABLE_ORDERS, array('id'=>$order_id));
		//Cash Envoy Merchant ID
		$data['cash_envoy_merchant_id'] = CASH_ENVOY_MERCHANT_ID;
		//Merchant Key
		$key = CASH_ENVOY_MERCHANT_KEY;
		//Transaction reference which must not contain any special characters. Numbers and alphabets only.
		$data['cash_envoy_transction_reference'] = $order->order_number;
		//Transaction Amount
		$charge = ((2.5/100) * $order->order_total) + 12.60;
		$data['cash_envoy_amount'] = $charge + $order->order_total;
		//Customer ID
		if($order->customer_type == 'guest') {
			$data['cash_envoy_customer_id'] = $order->guest_email;
		} else {
			$data['cash_envoy_customer_id'] = get_cell(TABLE_CUSTOMERS, array('id'=>$order->customer_id), 'email');
		}
		//A description of the transaction.
		$data['cash_envoy_transaction_description'] = 'Puchase of Groceries Items from Wetindey Online Shop';
		// notify url - absolute url of the page to which the user should be directed after payment
		// an example of the code needed in this type of page can be found in example_requery_usage.php
		$data['cash_envoy_notify_url'] = 'http://www.wetindey.com.ng/ng/shop/order/feedback/'.$order->order_number;
		//Generate request signature
		$con = $key.$data['cash_envoy_transction_reference'].$data['cash_envoy_amount'];
		$data['signature'] = hash_hmac('sha256', $con, $key, false);

		$this->load->view('frontend/cart/pay', $data);

	}

	//Gets a payment status from the payment gateway api.
	public function getStatus($transref, $mertid, $type='', $sign){
		$request = 'mertid='.$mertid.'&transref='.$transref.'&respformat='.$type.'&signature='.$sign; //initialize the request variables
		$url = 'https://www.cashenvoy.com/webservice/?cmd=requery'; //this is the url of the gateway's test api
		//$url = 'https://www.cashenvoy.com/webservice/?cmd=requery'; //this is the url of the gateway's live api
		$ch = curl_init(); //initialize curl handle
		curl_setopt($ch, CURLOPT_URL, $url); //set the url
		curl_setopt($ch, CURLOPT_RETURNTRANSFER,true); //return as a variable
		curl_setopt($ch, CURLOPT_POST, 1); //set POST method
		curl_setopt($ch, CURLOPT_POSTFIELDS, $request); //set the POST variables
		curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
		$response = curl_exec($ch); // grab URL and pass it to the browser. Run the whole process and return the response
		curl_close($ch); //close the curl handle
		return $response;
	}

  //calls the getStatus() method and formats the reponse as per what is requested via thie $status_request argument.
	public function requery_payment($order_number = '')
	{
		$key = CASH_ENVOY_MERCHANT_KEY;
		$transref = $order_number;
		$mertid = CASH_ENVOY_MERCHANT_ID;
		$type = ''; //Data return format. Options are xml or json. leave blank if you want data returned in string format.
		$cdata = $key.$transref.$mertid;
		$signature = hash_hmac('sha256', $cdata, $key, false);
		$response = $this->getStatus($transref,$mertid,$type,$signature);

		$response = strip_tags(preg_replace('#(<title.*?>).*?(</title>)#', '$1$2', $response));
		$data = explode('-',$response);
		//$cnt = count($data);
		//if($cnt==3){
			//$returned_transref = $data[0];
			//$returned_status = $data[1];
			//$returned_amount = $data[2];
			return $data;
			//always remember to cross-check the amount in your database with that returned by the webservice
			//provide service for successful transaction only if the amount returned by cashenvoy matches what you have in your db
		// } else {
		// 	$error = $data[0];
		// 	return $error;
		// }


	}

  // what gets invoked after an api call.
	public function feedback($order_number = '')
	{
		$this->__clearcache();
		$order = get_row(TABLE_ORDERS, array('order_number'=>$order_number));
		$response = $this->requery_payment($order->order_number);
		$save['order_id'] = $order->id;
		$save['requery_count'] = 0;
		$save['created'] = date('Y-m-d H:i:s');
		if(count($response) === 3) {
			$save['returned_transactionref'] = $response[0];
			$save['returned_status'] = $response[1];
			$save['returned_amount'] = $response[2];
			save(TABLE_ORDERS_TRANSACTIONS_LOG, $save);
			//var_dump($response);
			switch($response[1]){
				case 'C00':
					send_order_mail($order->id);
					send_order_mail_to_customer($order->id);
					redirect('status/complete');
				break;
				case 'C01':
				  delete_order($order->id);
					redirect('status/payment-cancelled');
				break;
				case 'C02':
					delete_order($order->id);
					redirect('status/inactivity');
				break;
				case 'C03':
					delete_order($order->id);
					redirect('status/no-transaction');
				break;
				case 'C04':
					delete_order($order->id);
					redirect('status/insufficient');
				break;
				case 'C05':
					delete_order($order->id);
					redirect('status/transaction-failed');
				break;

				default:
					delete_order($order->id);
					redirect('status/error');
				break;
			}
		} else {
			$save['error_string'] = $response[0];
			$this->orders_model->save_returned_payment_data($save);
			$this->payment_gateway_error();
			$this->__clearcache();
		 redirect('status/error');
		}
	}



 // If Cancel and order option at checkout.
	public function destroy_sessions()
	{
		foreach($this->cart->contents() as $row)
		{
			$data = array('rowid'=>$row['rowid'], 'qty'=>0);
			$this->cart->update($data);
		}

		$this->cart->destroy();
		$this->session->sess_destroy();
		$this->__clearcache();
		return true;
	}

	private function __clearcache()
	{
		$this->output->set_header("Cache-Control: no-store, no-cache, must-revalidate, no-transform, max-age=0, post-check=0, pre-check=0");
    $this->output->set_header("Pragma: no-cache");
		header( 'Expires: Sat, 26 Jul 1997 05:00:00 GMT' );
		header( 'Last-Modified: ' . gmdate( 'D, d M Y H:i:s' ) . ' GMT' );
		header( 'Cache-Control: no-store, no-cache, must-revalidate' );
		header( 'Cache-Control: post-check=0, pre-check=0', false );
		header( 'Pragma: no-cache' );
		return true;
	}


}
