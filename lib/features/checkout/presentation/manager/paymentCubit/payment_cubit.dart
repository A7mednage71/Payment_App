import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_app/features/checkout/data/models/payment_intent_input_model/payment_intent_input_model.dart';
import 'package:payment_app/features/checkout/data/repos/checkout_repo.dart';

part 'payment_state.dart';

class PaymentCubit extends Cubit<PaymentState> {
  PaymentCubit(this.checkoutrepo) : super(PaymentInitial());
  final CheckoutRepo checkoutrepo;
  Future makepayment(
      {required PaymentIntentInputModel paymentintentinputmodel}) async {
    emit(PaymentLoading());
    var data = await checkoutrepo.makePayment(
        paymentintentinputmodel: paymentintentinputmodel);
    data.fold(
      (l) {
        emit(PaymentFailure(errorMessage: l.message));
      },
      (r) {
        emit(PaymentSuccess());
      },
    );
  }
}
