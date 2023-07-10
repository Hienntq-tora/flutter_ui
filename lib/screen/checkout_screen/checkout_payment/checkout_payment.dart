import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:study_ui_flutter_tora_2/components/box_componets.dart';
import 'package:study_ui_flutter_tora_2/components/button_componets.dart';
import 'package:study_ui_flutter_tora_2/components/text_componets.dart';
import 'package:study_ui_flutter_tora_2/header/appbar.dart';
import 'package:study_ui_flutter_tora_2/models/payment_model.dart';
import 'package:study_ui_flutter_tora_2/router/routerlinks.dart';
import 'package:study_ui_flutter_tora_2/styles/colors_style.dart';

class CheckoutpaymentScreen extends StatefulWidget {
  const CheckoutpaymentScreen({Key? key}) : super(key: key);

  @override
  CheckoutpaymentScreenState createState() => CheckoutpaymentScreenState();
}

class CheckoutpaymentScreenState extends State<CheckoutpaymentScreen> {
  int selectedCard = 0;
  int selectedCard2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppbar(context, 'header', 'Checkout'),
      backgroundColor: ThemeColors.colorBg,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText.title34("Payment"),
              BoxSize.sizedBoxH20(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomText.titleCard("Payment Method"),
                      const SizedBox(
                        width: 100,
                      ),
                      const Text(
                        "change",
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
                            (item) {
                              final index = item.key;
                              final items = item.value;
                              final isLastItem =
                                  index == dataListCheckout.length - 1;
                              return Column(
                                children: [
                                  Row(
                                    children: [
                                      Radio<int>(
                                        value: index + 1,
                                        groupValue: selectedCard,
                                        focusColor: ThemeColors.colorIcon,
                                        activeColor: ThemeColors.colorIcon,
                                        onChanged: (value) {
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
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                height: 40,
                                                width: 40,
                                                decoration: BoxDecoration(
                                                  color: items.color,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                child: Align(
                                                  alignment: Alignment.center,
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
                children: [
                  CustomText.titleCard("Delivery method."),
                  BoxSize.sizedBoxH20(),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(21, 31, 10, 25),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Radio<int>(
                                value: 0,
                                groupValue: selectedCard2,
                                focusColor: ThemeColors.colorIcon,
                                activeColor: ThemeColors.colorIcon,
                                onChanged: (value) {
                                  setState(() {
                                    selectedCard2 = value!;
                                  });
                                },
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
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
                            children: [
                              Radio<int>(
                                value: 1,
                                groupValue: selectedCard2,
                                focusColor: ThemeColors.colorIcon,
                                activeColor: ThemeColors.colorIcon,
                                onChanged: (value) {
                                  setState(() {
                                    selectedCard2 = value!;
                                  });
                                },
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
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
                children: [
                  Text(
                    "Total",
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
                    "23.000",
                    style: TextStyle(
                      fontFamily: 'SF Pro Text',
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              BoxSize.sizedBoxH30(),
              CustomButton(routerLink: RouterLinks.checkoutPlayment),
              BoxSize.sizedBoxH20(),
            ],
          ),
        ),
      ),
    );
  }
}