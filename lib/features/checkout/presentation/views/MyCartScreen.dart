import 'package:flutter/material.dart';
import 'package:payment_app/core/app_styles.dart';

class MyCartScreen extends StatelessWidget {
  const MyCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Cart",
          style: AppStyles.medium25,
        ),
        centerTitle: true,
      ),
    );
  }
}
