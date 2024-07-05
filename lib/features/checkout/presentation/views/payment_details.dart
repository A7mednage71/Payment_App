import 'package:flutter/material.dart';
import 'package:payment_app/core/methods/get_app_bar.dart';
import 'package:payment_app/features/checkout/presentation/widgets/custom_credit_card.dart';
import 'package:payment_app/features/checkout/presentation/widgets/payment_methods_list_view.dart';

class PaymentDetailsPage extends StatelessWidget {
  const PaymentDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getMyAppBar("Payment Details"),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 32),
            PaymentMethodslistView(),
            SizedBox(height: 34),
            CustomCreditCard(),
          ],
        ),
      ),
    );
  }
}
