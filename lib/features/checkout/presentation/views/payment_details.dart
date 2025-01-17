import 'package:flutter/material.dart';
import 'package:payment_app/core/methods/get_app_bar.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/custom_credit_card.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/payment_methods_list_view.dart';

class PaymentDetailsPage extends StatelessWidget {
  const PaymentDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: getMyAppBar("Payment Details"),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 32),
            PaymentMethodslistView(),
            SizedBox(height: 34),
            CustomCreditCard(),
            SizedBox(height: 34),
          ],
        ),
      ),
    );
  }
}
