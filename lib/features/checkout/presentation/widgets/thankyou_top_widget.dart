import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/app_styles.dart';

class ThankYouTopWidgets extends StatelessWidget {
  const ThankYouTopWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 66),
        Text("Thank you!", style: AppStyles.medium25),
        Text("Your transaction was successful", style: AppStyles.regular20),
        SizedBox(height: 42),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Date", style: AppStyles.regular18),
            Text("01/24/2023", style: AppStyles.semiBold18),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Time", style: AppStyles.regular18),
            Text("10:15 AM", style: AppStyles.semiBold18),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("To", style: AppStyles.regular18),
            Text("Sam Louis", style: AppStyles.semiBold18),
          ],
        ),
        SizedBox(height: 30),
      ],
    );
  }
}
