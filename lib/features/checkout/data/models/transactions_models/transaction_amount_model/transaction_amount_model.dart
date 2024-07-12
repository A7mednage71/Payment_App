import 'details.dart';

class TransactionAmountModel {
  String? total;
  String? currency;
  Details? details;

  TransactionAmountModel({this.total, this.currency, this.details});

  factory TransactionAmountModel.fromJson(Map<String, dynamic> json) {
    return TransactionAmountModel(
      total: json['total'] as String?,
      currency: json['currency'] as String?,
      details: json['details'] == null
          ? null
          : Details.fromJson(json['details'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() => {
        'total': total,
        'currency': currency,
        'details': details?.toJson(),
      };
}
