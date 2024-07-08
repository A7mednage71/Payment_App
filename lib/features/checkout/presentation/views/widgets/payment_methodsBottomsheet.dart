import 'package:flutter/material.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/custom_elevated_button.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/payment_methods_list_view.dart';

class PaymentMethodsBottomSheet extends StatelessWidget {
  const PaymentMethodsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 16),
          const PaymentMethodslistView(),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: CustomElevatedButton(
                  text: "Continue",
                  onPressed: () {},
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
