import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payment_app/core/utils/api_keys.dart';
import 'package:payment_app/features/checkout/presentation/views/MyCartScreen.dart';

void main() {
  Stripe.publishableKey = ApiKeys.publicKeyToken;
  runApp(const PaymentApp());
}

class PaymentApp extends StatelessWidget {
  const PaymentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: GoogleFonts.interTextTheme()),
      home: const MyCartScreen(),
    );
  }
}
