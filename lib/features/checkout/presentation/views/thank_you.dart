import 'package:flutter/material.dart';
import 'package:payment_app/core/methods/get_app_bar.dart';
import 'package:payment_app/features/checkout/presentation/widgets/custom_small_container.dart';

class ThankYouScreen extends StatelessWidget {
  const ThankYouScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: getMyAppBar(""),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Stack(
          children: [
            Container(
              decoration: const ShapeDecoration(
                color: Color(0xffEDEDED),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
              ),
            ),
            Positioned(
              bottom: MediaQuery.sizeOf(context).height * 0.2,
              left: -35 / 2,
              child: const CustomSmallContainer(),
            ),
            Positioned(
              bottom: MediaQuery.sizeOf(context).height * 0.2,
              right: -35 / 2,
              child: const CustomSmallContainer(),
            ),
          ],
        ),
      ),
    );
  }
}
