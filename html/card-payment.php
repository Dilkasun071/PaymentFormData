<?php


class Payment 
{
    public function stripePayment($data)
	{
        try {
            $token = $data['token_id'];
            $name = $data['name'];
            $email = $data['email'];

            //Include Stripe PHP library
            require_once "./stripe/init.php";

            //Set api key
            $stripe = array(
                "secret_key"      => "sk_test_5rHXTQdUviKp4gQSvs48IeyI00CT6nIziE",
                "publishable_key" => "pk_test_825gr2j2VU0m53QoKBVELwyE00Sks2y5P6"
            );
            
            \Stripe\Stripe::setApiKey($stripe['secret_key']);
            
            //Add customer to stripe
            $customer = \Stripe\Customer::create(array(
                'email' 	=> $email,
                'source'  	=> $token
            ));
            
            //Item information
            $itemNumber = $data["item_no"];;
            $itemPrice = intval($data["amount"]);
            $currency = "LKR";
            
            //Charge a credit or a debit card
            $charge = \Stripe\Charge::create(array(
                'customer' => $customer->id,
                'amount'   => $itemPrice,
                'currency' => $currency,
                'description' => $itemNumber,
                'metadata' => array(
                    'item_id' => $itemNumber
                )
            ));
            
            //Retrieve charge details
            $chargeJson = $charge->jsonSerialize();

            return $chargeJson;
        } catch (\Stripe\Error\Base $e) {
            return $e;
        } catch (Exception $e) {
            return $e;
        }

	}
}

if(isset($_POST)) {
    $data = array(
        "token_id" => $_POST["payment_id"],
        "name" => $_POST["name"],
        "email" => $_POST["email"],
        "item_no" => $_POST["item_no"],
        "amount" => $_POST["payment_amount"]
    );

    $res = new Payment();

    echo json_encode($res->stripePayment($data));
}




