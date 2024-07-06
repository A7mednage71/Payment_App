import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment_app/core/methods/get_app_bar.dart';
import 'package:payment_app/core/utils/app_assets.dart';
import 'package:payment_app/features/checkout/presentation/widgets/custom_small_container.dart';
import 'package:payment_app/features/checkout/presentation/widgets/thank_you_card.dart';

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
          clipBehavior: Clip.none,
          children: [
            const ThankYouCard(),
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
            Positioned(
              top: -50,
              left: 138,
              // right: MediaQuery.sizeOf(context).width * 0.35,
              child: CircleAvatar(
                radius: 50,
                backgroundColor: const Color(0xffEDEDED),
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: const Color(0xff34A853),
                  child: SvgPicture.asset(Assets.imageCheckImage),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
