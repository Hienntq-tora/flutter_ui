import 'package:flutter/material.dart';

class PaymentItemModel {
  final String imageAsset;
  final String title;
  final Color color;
  final String? background;

  PaymentItemModel({
    required this.imageAsset,
    required this.title,
    required this.color,
    this.background,
  });
}

List<PaymentItemModel> dataList = [
  PaymentItemModel(
    imageAsset: 'assets/images/svg/bi_credit-card-2-front-fill.svg',
    title: 'Card',
    color: Colors.orange,

  ),
  PaymentItemModel(
    imageAsset: 'assets/images/svg/dashicons_bank.svg',
    title: 'Bank account',
    color: const Color(0xFFEB4796),
    background: 'linear-gradient(0deg, #EB4796 0%, #EB4796 100%), #C4C4C4',

  ),
  PaymentItemModel(
    imageAsset: 'assets/images/svg/cib_paypal.svg',
    title: 'Paypal',
    color: const Color(0xFF0038FF),
    background: 'linear-gradient(0deg, #0038FF 0%, #0038FF 100%), #C4C4C4',
  ),
];

List<PaymentItemModel> dataListCheckout = [
  PaymentItemModel(
    imageAsset: 'assets/images/svg/bi_credit-card-2-front-fill.svg',
    title: 'Card',
    color: const Color(0xFFF47B0A),
  ),
  PaymentItemModel(
    imageAsset: 'assets/images/svg/dashicons_bank.svg',
    title: 'Bank account',
    color: const Color(0xFFEB4796),
  ),
];
