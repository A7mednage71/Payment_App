import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_app/features/checkout/data/models/payment_intent_input_model/payment_intent_input_model.dart';
import 'package:payment_app/features/checkout/presentation/manager/paymentCubit/payment_cubit.dart';
import 'package:payment_app/features/checkout/presentation/views/thank_you.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/custom_elevated_button.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/payment_methods_list_view.dart';

class PaymentMethodsBottomSheet extends StatelessWidget {
  const PaymentMethodsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 16),
          const PaymentMethodslistView(),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: BlocConsumer<PaymentCubit, PaymentState>(
                  listener: (context, state) {
                    if (state is PaymentSuccess) {
                      Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (context) {
                          return const ThankYouScreen();
                        },
                      ));
                    }
                    if (state is PaymentFailure) {
                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(state.errorMessage)));
                    }
                  },
                  builder: (context, state) {
                    return CustomElevatedButton(
                      text: "Continue",
                      onPressed: () {
                        PaymentIntentInputModel paymentIntentInputModel =
                            PaymentIntentInputModel(
                                amount: '100', currency: 'USD');
                        BlocProvider.of<PaymentCubit>(context).makepayment(
                            paymentintentinputmodel: paymentIntentInputModel);
                      },
                      isLoading: state is PaymentLoading ? true : false,
                    );
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
