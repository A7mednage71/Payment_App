import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/app_styles.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton(
      {super.key, required this.text, this.onPressed, this.isLoading = false});
  final String text;
  final void Function()? onPressed;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xff34A853),
        fixedSize: const Size(double.infinity, 70),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
      ),
      onPressed: onPressed,
      child: isLoading
          ? const Center(child: CircularProgressIndicator())
          : Text(text, style: AppStyles.medium22),
    );
  }
}
