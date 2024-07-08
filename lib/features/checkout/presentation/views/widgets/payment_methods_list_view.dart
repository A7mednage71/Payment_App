import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/app_assets.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/payment_method_item.dart';

class PaymentMethodslistView extends StatefulWidget {
  const PaymentMethodslistView({
    super.key,
  });

  @override
  State<PaymentMethodslistView> createState() => _PaymentMethodslistViewState();
}

class _PaymentMethodslistViewState extends State<PaymentMethodslistView> {
  List<String> paymentmethodsitems = [
    Assets.imageCard,
    Assets.imagePaypal,
    Assets.imageApplepay,
  ];

  int isactive = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: paymentmethodsitems.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                isactive = index;
              });
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: index == 1 ? 0 : 20),
              child: PymentMethodItem(
                isactive: isactive == index,
                image: paymentmethodsitems[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
