import 'order_tem.dart';

class TransactionsItemsList {
  List<OrderItem>? orders;

  TransactionsItemsList({this.orders});

  factory TransactionsItemsList.fromJson(Map<String, dynamic> json) {
    return TransactionsItemsList(
      orders: (json['items'] as List<dynamic>?)
          ?.map((e) => OrderItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'items': orders?.map((e) => e.toJson()).toList(),
      };
}
