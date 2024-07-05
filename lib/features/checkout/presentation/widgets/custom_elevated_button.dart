import 'package:flutter/material.dart';
import 'package:payment_app/core/app_styles.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xff34A853),
        fixedSize: const Size(double.infinity, 70),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
      ),
      onPressed: () {},
      child: Text(text, style: AppStyles.medium22),
    );
  }
}
