import 'package:flutter/material.dart';

import '../../components/box_componets.dart';
import '../../components/button_componets.dart';
import '../../components/text_componets.dart';
import '../../header/appbar.dart';
import '../../models/info_payment_model.dart';
import '../../router/routerlinks.dart';
import '../../styles/colors_style.dart';

class CheckoutDeliveryScreen extends StatefulWidget {
  const CheckoutDeliveryScreen({super.key});

  @override
  CheckoutDeliveryScreenState createState() => CheckoutDeliveryScreenState();
}

class CheckoutDeliveryScreenState extends State<CheckoutDeliveryScreen> {
  int selectedCard = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppbar(context, 'header', 'Checkout', ''),
      backgroundColor: ThemeColors.colorBg,
      body: Padding(
        padding: const EdgeInsets.only(left: 50.0, right: 50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CustomText.title34('Delivery'),
            BoxSize.sizedBoxH20(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CustomText.titleCard('Address details'),
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
                      padding: const EdgeInsets.only(top: 10.0, left: 15),
                      child: Column(
                        children: infotPaymentList.asMap().entries.map(
                          (MapEntry<int, PaymentInfoModel> item) {
                            final PaymentInfoModel items = item.value;
                            return Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
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
                                  children: <Widget>[
                                    Container(
                                      alignment: Alignment.center,
                                      width: 255,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
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
                                  children: <Widget>[
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
              children: <Widget>[
                CustomText.titleCard('Delivery method.'),
                BoxSize.sizedBoxH20(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: ThemeColors.colorBgCard,
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
                                  focusColor: ThemeColors.colorIcon,
                                  activeColor: ThemeColors.colorIcon,
                                  groupValue: selectedCard,
                                  onChanged: (int? value) {
                                    setState(() {
                                      selectedCard = value!;
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
                                  focusColor: ThemeColors.colorIcon,
                                  activeColor: ThemeColors.colorIcon,
                                  groupValue: selectedCard,
                                  onChanged: (int? value) {
                                    setState(() {
                                      selectedCard = value!;
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
              ],
            ),
            BoxSize.sizedBoxH20(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  'Tatal',
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
                  '23.000',
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
