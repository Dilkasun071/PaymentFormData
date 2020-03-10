<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <button id="btn_stripe_checkout"> Checkout </button>
    <script src="https://checkout.stripe.com/v2/checkout.js"></script>
	<script>
        var handler = StripeCheckout.configure({
            key: 'pk_test_825gr2j2VU0m53QoKBVELwyE00Sks2y5P6',
            image: 'https://stripe.com/img/documentation/checkout/marketplace.png',
            locale: 'auto',
            currency: 'LKR',
            token: function (token) {
                var data = {
                    'payment_id': token.id,
                    'email': token.email,
                    'currency': 'LKR',
                    'payment_amount': '1500',
                    'payment_status': 'success'
                };

                console.log(token);
                // $.ajax({
                //     type: "POST",
                //     url: "card-payment.php",
                //     data: data,
                //     success: function (response) {
                //         var obj = JSON.parse(response);
                //         if (obj.result == 1) {
                //             window.location.href = obj.redirect;
                //         } else {
                //             location.reload();
                //         }
                //     }
                // });
            }
        });
        document.getElementById('btn_stripe_checkout').addEventListener('click', function (e) {
            handler.open({
                name: 'subject-payment',
                description: 'checkouts',
                amount: '2000'
            });
            e.preventDefault();
        });
        // Close Checkout on page navigation:
        window.addEventListener('popstate', function () {
            handler.close();
        });
	</script>
</body>
</html>