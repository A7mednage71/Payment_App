class InitPaymentSheetInputModel {
  final String intentClientSecret;
  final String ephemeralKeySecret;
  final String customerId;

  InitPaymentSheetInputModel(
      {required this.intentClientSecret,
      required this.ephemeralKeySecret,
      required this.customerId});
}
