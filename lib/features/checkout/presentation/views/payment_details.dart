import 'package:flutter/material.dart';
import 'package:payment_app/core/methods/get_app_bar.dart';
import 'package:payment_app/features/checkout/presentation/widgets/custom_credit_card.dart';
import 'package:payment_app/features/checkout/presentation/widgets/custom_elevated_button.dart';
import 'package:payment_app/features/checkout/presentation/widgets/payment_methods_list_view.dart';

class PaymentDetailsPage extends StatelessWidget {
  const PaymentDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getMyAppBar("Payment Details"),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 32),
            const PaymentMethodslistView(),
            const SizedBox(height: 34),
            const CustomCreditCard(),
            const SizedBox(height: 34),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomElevatedButton(
                text: "Pay",
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
