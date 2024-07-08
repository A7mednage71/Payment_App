import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_app/core/utils/api_keys.dart';
import 'package:payment_app/core/utils/api_service.dart';
import 'package:payment_app/features/checkout/data/models/payment_intent_input_model/payment_intent_input_model.dart';
import 'package:payment_app/features/checkout/data/models/payment_intent_model/payment_intent_model.dart';

class StripeService {
  final apiService = ApiService();
  String baseUrl = "https://api.stripe.com/v1/payment_intents";

  Future<PaymentIntentModel> initiPaymentIntent(
      PaymentIntentInputModel paymentintentinputmodel) async {
    var response = await apiService.post(
        body: paymentintentinputmodel.tojson(),
        url: baseUrl,
        token: ApiKeys.stripeToken);
    var paymentmodel = PaymentIntentModel.fromJson(response.data);
    return paymentmodel;
  }

  Future integratepaymentsheet(
      {required String paymentIntentClientSecret}) async {
    Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
      merchantDisplayName: "Abo Nageh",
      paymentIntentClientSecret: paymentIntentClientSecret,
    ));
  }

  Future displayPaymentsheet() async {
    Stripe.instance.presentPaymentSheet();
  }

  Future makePayment(
      {required PaymentIntentInputModel paymentintentinputmodel}) async {
    var paymentintentmodel = await initiPaymentIntent(paymentintentinputmodel);
    await integratepaymentsheet(
        paymentIntentClientSecret: paymentintentmodel.clientSecret!);
    await displayPaymentsheet();
  }
}
