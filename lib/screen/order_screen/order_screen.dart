import 'package:flutter/material.dart';
import 'package:study_ui_flutter_tora_2/components/box_componets.dart';
import 'package:study_ui_flutter_tora_2/components/button_componets.dart';
import 'package:study_ui_flutter_tora_2/components/text_componets.dart';
import 'package:study_ui_flutter_tora_2/header/appbar.dart';
import 'package:study_ui_flutter_tora_2/router/routerlinks.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppbar(context, 'header', 'Orders'),
       body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BoxSize.sizedBoxH10(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: SizedBox(
                    child: Image.asset(
                      'assets/images/order_image.png',
                      width: 114,
                      height: 108,
                    ),
                  ),
                ),
                CustomText.notFoundText( 'No orders yet'),
                CustomText.notFoundDesText( 'Hit the orange button down below to Create an order'),
              ],
            ),
            BoxSize.sizedBoxH10(),
            CustomButton(routerLink: RouterLinks.notFoundOrder),
           ],
        ),
      ),);
  }
}
