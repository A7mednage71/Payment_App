import 'package:flutter/material.dart';
import 'package:payment_app/core/methods/get_app_bar.dart';
import 'package:payment_app/core/utils/app_assets.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/cartscreen_bottom_widget.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/cartscreen_orders_details.dart';

class MyCartScreen extends StatelessWidget {
  const MyCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: getMyAppBar("My Cart"),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 25),
          Expanded(child: Image.asset(Assets.basketimage)),
          const SizedBox(height: 25),
          const CartScreenOrdersDetails(),
          const SizedBox(height: 17),
          const Divider(thickness: 2, endIndent: 35, indent: 35),
          const SizedBox(height: 17),
          const CartscreenBottomWidget(),
          const SizedBox(height: 12),
        ],
      ),
    );
  }
}
