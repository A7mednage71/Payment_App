import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/app_styles.dart';

class TotalWidget extends StatelessWidget {
  const TotalWidget({
    super.key,
    required this.price,
  });

  final String price;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text("Total", style: AppStyles.semiBold24),
        Text(price, style: AppStyles.semiBold24)
      ],
    );
  }
}
