import 'package:flutter/material.dart';
import 'package:payment_app/features/checkout/presentation/widgets/order_details_row.dart';

class CartScreenOrdersDetails extends StatelessWidget {
  const CartScreenOrdersDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          OrderDetailsRow(title: "Order Subtotal", price: r"$42.97"),
          OrderDetailsRow(title: "Discount", price: r"$0"),
          OrderDetailsRow(title: "Shipping", price: r"$8"),
        ],
      ),
    );
  }
}
