import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';
import 'package:payment_app/core/utils/api_keys.dart';
import 'package:payment_app/features/checkout/data/models/transactions_models/transaction_amount_model/details.dart';
import 'package:payment_app/features/checkout/data/models/transactions_models/transaction_amount_model/transaction_amount_model.dart';
import 'package:payment_app/features/checkout/data/models/transactions_models/transactions_items_list/order_tem.dart';
import 'package:payment_app/features/checkout/data/models/transactions_models/transactions_items_list/transactions_order_items_list.dart';
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
                        // PaymentIntentInputModel paymentIntentInputModel =
                        //     PaymentIntentInputModel(
                        //         amount: '100',
                        //         currency: 'USD',
                        //         customerId: 'cus_QSSey3gVutkmHO');
                        // BlocProvider.of<PaymentCubit>(context).makepayment(
                        //     paymentintentinputmodel: paymentIntentInputModel);

                        var transactionAmountModel = TransactionAmountModel(
                          total: "100",
                          currency: "USD",
                          details: Details(
                            subtotal: "100",
                            shipping: "0",
                            shippingDiscount: 0,
                          ),
                        );

                        var trasactionsItemList = TransactionsItemsList(
                          orders: [
                            OrderItem(
                              name: "Apple",
                              quantity: 10,
                              currency: "USD",
                              price: "4",
                            ),
                            OrderItem(
                              name: "Pineapple",
                              quantity: 12,
                              currency: "USD",
                              price: "5",
                            ),
                          ],
                        );

                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => PaypalCheckoutView(
                            sandboxMode: true,
                            clientId: ApiKeys.clientID,
                            secretKey: ApiKeys.secretKey,
                            transactions: [
                              {
                                "amount": transactionAmountModel.toJson(),
                                "description":
                                    "The payment transaction description.",
                                "item_list": trasactionsItemList.toJson()
                              }
                            ],
                            note: "Contact us for any questions on your order.",
                            onSuccess: (Map params) async {
                              log("onSuccess: $params");
                              Navigator.pop(context);
                              // Navigator.push(context, MaterialPageRoute(
                              //   builder: (context) {
                              //     return const ThankYouScreen();
                              //   },
                              // ));
                            },
                            onError: (error) {
                              log("onError: $error");
                              Navigator.pop(context);
                            },
                            onCancel: () {
                              print('cancelled:');
                              Navigator.pop(context);
                            },
                          ),
                        ));
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
