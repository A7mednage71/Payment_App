import 'package:flutter/material.dart';
import 'package:payment_app/features/checkout/presentation/widgets/order_details_item_row.dart';

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
          OrderDetailsItemRow(title: "Order Subtotal", price: r"$42.97"),
          OrderDetailsItemRow(title: "Discount", price: r"$0"),
          OrderDetailsItemRow(title: "Shipping", price: r"$8"),
        ],
      ),
    );
  }
}
