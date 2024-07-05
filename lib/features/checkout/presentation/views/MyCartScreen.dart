import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payment_app/core/app_assets.dart';
import 'package:payment_app/core/app_styles.dart';

class MyCartScreen extends StatelessWidget {
  const MyCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onPressed: () {},
          icon: SvgPicture.asset(Assets.imageBackarrow),
        ),
        title: const Text(
          "My Cart",
          style: AppStyles.medium25,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Image.asset(Assets.basketimage),
        ],
      ),
    );
  }
}
