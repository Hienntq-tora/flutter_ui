import 'package:flutter/material.dart';
import 'package:study_ui_flutter_tora_2/components/box_componets.dart';
import 'package:study_ui_flutter_tora_2/components/button_componets.dart';
import 'package:study_ui_flutter_tora_2/components/text_componets.dart';
import 'package:study_ui_flutter_tora_2/header/appbar.dart';
import 'package:study_ui_flutter_tora_2/router/routerlinks.dart';
import 'package:study_ui_flutter_tora_2/styles/colors_style.dart';

import '../../models/info_payment_model.dart';

class CheckoutDeliveryScreen extends StatefulWidget {
  const CheckoutDeliveryScreen({Key? key}) : super(key: key);

  @override
  CheckoutDeliveryScreenState createState() => CheckoutDeliveryScreenState();
}

class CheckoutDeliveryScreenState extends State<CheckoutDeliveryScreen> {
  int selectedCard = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppbar(context, 'header', 'Checkout'),
      backgroundColor: ThemeColors.colorBg,
      body: Padding(
        padding: const EdgeInsets.only(left: 50.0, right: 50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText.title34("Delivery"),
            BoxSize.sizedBoxH20(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomText.titleCard("Address details"),
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
                      padding: const EdgeInsets.only(top: 10.0, left: 15),
                      child: Column(
                        children: infotPaymentList.asMap().entries.map(
                          (item) {
                            final items = item.value;
                            return Column(
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomText.nameX15(items.name),
                                        Container(
                                          alignment: Alignment.center,
                                          width: 250,
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
                                    Container(
                                      alignment: Alignment.center,
                                      width: 255,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomText.descriptionX15(
                                              items.description),
                                          Container(
                                            alignment: Alignment.center,
                                            width: 250,
                                            height: 1,
                                            color:
                                                Colors.black.withOpacity(0.3),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                BoxSize.sizedBoxH10(),
                                Row(
                                  children: [
                                    CustomText.descriptionX15(items.phone),
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: ThemeColors.colorBgCard,
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
                                  focusColor: ThemeColors.colorIcon,
                                  activeColor: ThemeColors.colorIcon,
                                  groupValue: selectedCard,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedCard = value!;
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
                                  focusColor: ThemeColors.colorIcon,
                                  activeColor: ThemeColors.colorIcon,
                                  groupValue: selectedCard,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedCard = value!;
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
              ],
            ),
            BoxSize.sizedBoxH20(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Tatal",
                  style: TextStyle(
                    fontSize: 17,
                    fontFamily: ' SF Pro Text',
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
            BoxSize.sizedBoxH20(),
            CustomButton(routerLink: RouterLinks.checkoutPlayment),
            BoxSize.sizedBoxH20(),
          ],
        ),
      ),
    );
  }
}
