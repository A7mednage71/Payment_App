import 'package:flutter/material.dart';
import 'package:payment_app/core/methods/get_app_bar.dart';
import 'package:payment_app/core/utils/app_assets.dart';
import 'package:payment_app/features/checkout/presentation/widgets/payment_method_item.dart';

class PaymentDetailsPage extends StatelessWidget {
  const PaymentDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getMyAppBar("Payment Details"),
      body: const Column(
        children: [
          PymentMethodItem(
            isactive: false,
            image: Assets.imagePaypal,
          ),
        ],
      ),
    );
  }
}
