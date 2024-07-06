import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment_app/core/utils/app_assets.dart';
import 'package:payment_app/core/utils/app_styles.dart';

class ThankYouMiddleWidgets extends StatelessWidget {
  const ThankYouMiddleWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 24),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Total", style: AppStyles.semiBold24),
            Text(r"$50.97", style: AppStyles.semiBold24),
          ],
        ),
        const SizedBox(height: 30),
        Card(
          color: Colors.white,
          elevation: 0,
          child: ListTile(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            leading: SvgPicture.asset(Assets.imageCardLogo),
            title: const Text("Credit Card", style: AppStyles.regular18),
            subtitle: Text("Mastercard **78",
                style: AppStyles.regular18
                    .copyWith(color: const Color(0xff4D4D4D))),
          ),
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}
