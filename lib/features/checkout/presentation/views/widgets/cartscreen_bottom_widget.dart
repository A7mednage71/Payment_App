import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_app/features/checkout/data/repos/checkout_repo_impl.dart';
import 'package:payment_app/features/checkout/presentation/manager/paymentCubit/payment_cubit.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/custom_elevated_button.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/payment_methodsBottomsheet.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/total_widget.dart';

class CartscreenBottomWidget extends StatelessWidget {
  const CartscreenBottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const TotalWidget(price: r"$50.97"),
          const SizedBox(height: 17),
          CustomElevatedButton(
            text: "Complete Payment",
            onPressed: () {
              // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              //   return const PaymentDetailsPage();
              // }));

              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return BlocProvider(
                      create: (context) => PaymentCubit(CheckoutRepoImpl()),
                      child: const PaymentMethodsBottomSheet(),
                    );
                  });
            },
          )
        ],
      ),
    );
  }
}
