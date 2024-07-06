import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment_app/core/utils/app_assets.dart';

class CustomTopcircle extends StatelessWidget {
  const CustomTopcircle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 50,
      backgroundColor: const Color(0xffEDEDED),
      child: CircleAvatar(
        radius: 40,
        backgroundColor: const Color(0xff34A853),
        child: SvgPicture.asset(Assets.imageCheckImage),
      ),
    );
  }
}
