import 'package:flutter/material.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/credit_card_listtile.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/total_widget.dart';

class ThankYouMiddleWidgets extends StatelessWidget {
  const ThankYouMiddleWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 24),
        TotalWidget(price: r"$50.97"),
        SizedBox(height: 30),
        CreditCardListTile(),
        SizedBox(height: 30),
      ],
    );
  }
}
