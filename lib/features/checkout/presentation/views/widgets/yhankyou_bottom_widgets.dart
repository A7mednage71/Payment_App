import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment_app/core/utils/app_assets.dart';
import 'package:payment_app/core/utils/app_styles.dart';

class ThankYouBottomWidgets extends StatelessWidget {
  const ThankYouBottomWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(Assets.imageBarcode),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          decoration: const ShapeDecoration(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                side: BorderSide(color: Color(0xff34A853), width: 2)),
          ),
          child: Text(
            "PAID",
            style:
                AppStyles.semiBold24.copyWith(color: const Color(0xff34A853)),
          ),
        )
      ],
    );
  }
}
