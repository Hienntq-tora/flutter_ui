
class PaymentInfoModel {
  final String name;
  final String description;
  final String phone;

  PaymentInfoModel({
    required this.name,
    required this.description,
    required this.phone,
  });
}

List<PaymentInfoModel> infotPaymentList = [
  PaymentInfoModel(
    name: "Marvis Ighedosa",
    description: "Km 5 refinery road oppsite republic road, effurun, delta state",
    phone: "+234 9011039271",
  ),
];
