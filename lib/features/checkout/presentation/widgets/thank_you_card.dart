import 'package:flutter/material.dart';
import 'package:payment_app/features/checkout/presentation/widgets/thankyou_middle_widget.dart';
import 'package:payment_app/features/checkout/presentation/widgets/thankyou_top_widget.dart';
import 'package:payment_app/features/checkout/presentation/widgets/yhankyou_bottom_widgets.dart';
import 'package:styled_divider/styled_divider.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
