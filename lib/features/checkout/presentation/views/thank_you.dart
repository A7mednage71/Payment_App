import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment_app/core/methods/get_app_bar.dart';
import 'package:payment_app/core/utils/app_assets.dart';
import 'package:payment_app/features/checkout/presentation/widgets/custom_small_container.dart';
import 'package:payment_app/features/checkout/presentation/widgets/thankyou_middle_widget.dart';
import 'package:payment_app/features/checkout/presentation/widgets/thankyou_top_widget.dart';
import 'package:payment_app/features/checkout/presentation/widgets/yhankyou_bottom_widgets.dart';
import 'package:styled_divider/styled_divider.dart';

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
            Container(
              decoration: const ShapeDecoration(
                color: Color(0xffEDEDED),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ThankYouTopWidgets(),
                    Divider(
                      color: Color(0xffC7C7C7),
                      indent: 15,
                      endIndent: 15,
                      thickness: 2,
                    ),
                    ThankYouMiddleWidgets(),
                    StyledDivider(
                      color: Color(0xffC7C7C7),
                      thickness: 2,
                      lineStyle: DividerLineStyle.dashed,
                      indent: 25,
                      endIndent: 25,
                    ),
                    SizedBox(height: 60),
                    ThankYouBottomWidgets()
                  ],
                ),
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
