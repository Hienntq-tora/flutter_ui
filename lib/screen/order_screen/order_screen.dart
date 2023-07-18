import 'package:flutter/material.dart';
import '../../components/box_componets.dart';
import '../../components/button_componets.dart';
import '../../components/text_componets.dart';
import '../../header/appbar.dart';
import '../../router/routerlinks.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppbar(context, 'header', 'Orders', ''),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            BoxSize.sizedBoxH10(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
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
                CustomText.notFoundText('No orders yet'),
                CustomText.notFoundDesText(
                    'Hit the orange button down below to Create an order'),
              ],
            ),
            BoxSize.sizedBoxH10(),
            CustomButton(routerLink: RouterLinks.notFoundOrder),
          ],
        ),
      ),
    );
  }
}
