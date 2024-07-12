import 'package:dio/dio.dart';

class ApiService {
  final Dio dio = Dio();
  Future<Response> post({
    required body,
    required String url,
    required String token,
    String? contentype,
    Map<String, dynamic>? headers,
  }) async {
    var response = await dio.post(
      url,
      data: body,
      options: Options(
        contentType: contentype,
        headers: headers ?? {"Authorization": "Bearer $token"},
      ),
    );
    return response;
  }
}

// # Create a Customer (use an existing Customer ID if this is a returning customer)
// curl https://api.stripe.com/v1/customers \
//   -u sk_test_51PZypMRtGBHRxRYXJSNIcCFZUzT775fcV2BqH1A2vaIq021ZLp5uK0q8aZFO6nNtzIGZjuFCC2G19XryAIwyuhYw005YnKQ5Q9: \
//   -X "POST"

// # Create an Ephemeral Key for the Customer
// curl https://api.stripe.com/v1/ephemeral_keys \
//   -u sk_test_51PZypMRtGBHRxRYXJSNIcCFZUzT775fcV2BqH1A2vaIq021ZLp5uK0q8aZFO6nNtzIGZjuFCC2G19XryAIwyuhYw005YnKQ5Q9: \
//   -H "Stripe-Version: 2024-06-20" \
//   -X "POST" \
//   -d "customer"="{{CUSTOMER_ID}}" \

// # Create a PaymentIntent
// curl https://api.stripe.com/v1/payment_intents \
//   -u sk_test_51PZypMRtGBHRxRYXJSNIcCFZUzT775fcV2BqH1A2vaIq021ZLp5uK0q8aZFO6nNtzIGZjuFCC2G19XryAIwyuhYw005YnKQ5Q9: \
//   -X "POST" \
//   -d "customer"="{{CUSTOMER_ID}}" \
//   -d "amount"=1099 \
//   -d "currency"="eur" \
//   # In the latest version of the API, specifying the `automatic_payment_methods` parameter
//   # is optional because Stripe enables its functionality by default.
//   -d "automatic_payment_methods[enabled]"=true \
