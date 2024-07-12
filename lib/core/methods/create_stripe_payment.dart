import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_app/features/checkout/data/models/payment_intent_input_model/payment_intent_input_model.dart';
import 'package:payment_app/features/checkout/presentation/manager/paymentCubit/payment_cubit.dart';

void createStripePayment(BuildContext context) {
  PaymentIntentInputModel paymentIntentInputModel = PaymentIntentInputModel(
      amount: '100', currency: 'USD', customerId: 'cus_QSSey3gVutkmHO');
  BlocProvider.of<PaymentCubit>(context)
      .makepayment(paymentintentinputmodel: paymentIntentInputModel);
}
