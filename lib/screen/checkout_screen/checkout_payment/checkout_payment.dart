import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../components/box_componets.dart';
import '../../../components/button_componets.dart';
import '../../../components/text_componets.dart';
import '../../../header/appbar.dart';
import '../../../models/payment_model.dart';
import '../../../styles/colors_style.dart';

import 'dialog_confirm_paymet.dart';

class CheckoutpaymentScreen extends StatefulWidget {
  const CheckoutpaymentScreen({super.key});

  @override
  CheckoutpaymentScreenState createState() => CheckoutpaymentScreenState();
}

class CheckoutpaymentScreenState extends State<CheckoutpaymentScreen> {
  int selectedCard = 0;
  int selectedCard2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppbar(context, 'header', 'Checkout', ''),
      backgroundColor: ThemeColors.colorBg,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CustomText.title34('Payment'),
              BoxSize.sizedBoxH20(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      CustomText.titleCard('Payment Method'),
                      const SizedBox(
                        width: 100,
                      ),
                      const Text(
                        'change',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'SF Pro Text',
                          color: ThemeColors.colorText,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  BoxSize.sizedBoxH20(),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ListTile(
                      title: Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Column(
                          children: dataListCheckout.asMap().entries.map(
                            (MapEntry<int, PaymentItemModel> item) {
                              final int index = item.key;
                              final PaymentItemModel items = item.value;
                              final bool isLastItem =
                                  index == dataListCheckout.length - 1;
                              return Column(
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Radio<int>(
                                        value: index + 1,
                                        groupValue: selectedCard,
                                        focusColor: ThemeColors.colorIcon,
                                        activeColor: ThemeColors.colorIcon,
                                        onChanged: (int? value) {
                                          setState(
                                            () {
                                              selectedCard = value!;
                                            },
                                          );
                                        },
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[
                                              Container(
                                                height: 40,
                                                width: 40,
                                                decoration: BoxDecoration(
                                                  color: items.color,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                child: Align(
                                                  child: SvgPicture.asset(
                                                    items.imageAsset,
                                                  ),
                                                ),
                                              ),
                                              BoxSize.sizedBoxW10(),
                                              CustomText.titleCard(items.title),
                                              BoxSize.sizedBoxH20(),
                                            ],
                                          ),
                                          BoxSize.sizedBoxH8(),
                                          if (!isLastItem)
                                            Container(
                                              alignment: Alignment.center,
                                              width: 200,
                                              height: 1,
                                              color:
                                                  Colors.black.withOpacity(0.3),
                                            ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  BoxSize.sizedBoxH10(),
                                ],
                              );
                            },
                          ).toList(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              BoxSize.sizedBoxH20(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CustomText.titleCard('Delivery method.'),
                  BoxSize.sizedBoxH20(),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(21, 31, 10, 25),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Radio<int>(
                                value: 0,
                                groupValue: selectedCard2,
                                focusColor: ThemeColors.colorIcon,
                                activeColor: ThemeColors.colorIcon,
                                onChanged: (int? value) {
                                  setState(() {
                                    selectedCard2 = value!;
                                  });
                                },
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      CustomText.titleCard('Door delivery'),
                                    ],
                                  ),
                                  BoxSize.sizedBoxH20(),
                                  Container(
                                    alignment: Alignment.center,
                                    width: 200,
                                    height: 1,
                                    color: Colors.black.withOpacity(0.3),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          BoxSize.sizedBoxH10(),
                          Row(
                            children: <Widget>[
                              Radio<int>(
                                value: 1,
                                groupValue: selectedCard2,
                                focusColor: ThemeColors.colorIcon,
                                activeColor: ThemeColors.colorIcon,
                                onChanged: (int? value) {
                                  setState(() {
                                    selectedCard2 = value!;
                                  });
                                },
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      CustomText.titleCard('Pick up'),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              BoxSize.sizedBoxH20(),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    'Total',
                    style: TextStyle(
                      fontSize: 17,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    width: 150,
                  ),
                  Text(
                    '23.000',
                    style: TextStyle(
                      fontFamily: 'SF Pro Text',
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              BoxSize.sizedBoxH30(),
              CustomButton(
                onOpenModal: () {
                  DialogConfirmPayment.showConfirmationDialog(context);
                },
              ),
              BoxSize.sizedBoxH20(),
            ],
          ),
        ),
      ),
    );
  }
}
