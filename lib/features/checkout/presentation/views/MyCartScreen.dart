import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payment_app/core/app_assets.dart';
import 'package:payment_app/core/app_styles.dart';
import 'package:payment_app/features/checkout/presentation/widgets/cartscreen_bottom_widget.dart';
import 'package:payment_app/features/checkout/presentation/widgets/cartscreen_orders_details.dart';

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
        title: const Text("My Cart", style: AppStyles.medium25),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 25),
          Image.asset(Assets.basketimage),
          const SizedBox(height: 25),
          const CartScreenOrdersDetails(),
          const SizedBox(height: 17),
          const Divider(thickness: 2, endIndent: 35, indent: 35),
          const SizedBox(height: 17),
          const CartscreenBottomWidget()
        ],
      ),
    );
  }
}
