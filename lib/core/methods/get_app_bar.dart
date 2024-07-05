import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment_app/core/utils/app_assets.dart';
import 'package:payment_app/core/utils/app_styles.dart';

AppBar getMyAppBar(String title) {
  return AppBar(
    backgroundColor: const Color(0xffFFFFFF),
    leading: IconButton(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onPressed: () {},
      icon: SvgPicture.asset(Assets.imageBackarrow),
    ),
    title: Text(title, style: AppStyles.medium25),
    centerTitle: true,
  );
}
