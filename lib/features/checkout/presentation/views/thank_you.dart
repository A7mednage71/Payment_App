import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment_app/core/utils/app_assets.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/custom_small_container.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/custom_top_circle.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/thank_you_card.dart';

class ThankYouScreen extends StatelessWidget {
  const ThankYouScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: GestureDetector(
                          onTap: () {},
                          child: SvgPicture.asset(Assets.imageBackarrow))),
                  const SizedBox(height: 10),
                  const ThankYouCard(),
                ],
              ),
            ),
            Positioned(
              bottom: MediaQuery.sizeOf(context).height * 0.21,
              left: -35 / 2,
              child: const CustomSmallContainer(),
            ),
            Positioned(
              bottom: MediaQuery.sizeOf(context).height * 0.21,
              right: -35 / 2,
              child: const CustomSmallContainer(),
            ),
            const Positioned(
              top: 30,
              left: 138,
              // right: MediaQuery.sizeOf(context).width * 0.35,
              child: CustomTopcircle(),
            )
          ],
        ),
      ),
    );
  }
}
