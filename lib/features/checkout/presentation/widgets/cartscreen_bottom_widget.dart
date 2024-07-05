import 'package:flutter/material.dart';
import 'package:payment_app/core/app_styles.dart';
import 'package:payment_app/features/checkout/presentation/widgets/custom_elevated_button.dart';

class CartscreenBottomWidget extends StatelessWidget {
  const CartscreenBottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Total", style: AppStyles.semiBold20),
              Text(r"$50.97", style: AppStyles.semiBold20)
            ],
          ),
          SizedBox(height: 17),
          CustomElevatedButton(text: "Complete Payment")
        ],
      ),
    );
  }
}
