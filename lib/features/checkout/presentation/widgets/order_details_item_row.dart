import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/app_styles.dart';

class OrderDetailsItemRow extends StatelessWidget {
  const OrderDetailsItemRow({
    super.key,
    required this.title,
    required this.price,
  });
  final String title;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: AppStyles.regular18),
        Text(price, style: AppStyles.regular18)
      ],
    );
  }
}
