import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/app_styles.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/thank_you_item_info.dart';

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
        ThankYouItemInfo(text1: "Date", text2: "01/24/2023"),
        SizedBox(height: 20),
        ThankYouItemInfo(text1: "Time", text2: "10:15 AM"),
        SizedBox(height: 20),
        ThankYouItemInfo(text1: "To", text2: "Sam Louis"),
        SizedBox(height: 30),
      ],
    );
  }
}
