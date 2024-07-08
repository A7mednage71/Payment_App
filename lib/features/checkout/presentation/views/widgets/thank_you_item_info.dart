import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/app_styles.dart';

class ThankYouItemInfo extends StatelessWidget {
  const ThankYouItemInfo({
    super.key,
    required this.text1,
    required this.text2,
  });
  final String text1;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text1, style: AppStyles.regular18),
        Text(text2, style: AppStyles.semiBold18),
      ],
    );
  }
}
