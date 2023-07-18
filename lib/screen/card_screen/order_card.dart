import 'package:flutter/material.dart';

import '../../components/box_componets.dart';
import '../../components/button_componets.dart';
import '../../header/appbar.dart';
import '../../router/routerlinks.dart';
import 'card_items/card_items.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppbar(context, 'header', 'Card', ''),
      body: Padding(
        padding: const EdgeInsets.only(top: 61, left: 30, right: 30),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ClipOval(
                  child: Image.asset(
                    'assets/images/iwwa_swipe.png',
                    height: 17,
                    width: 16,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                const Text('swipe on an item to delete')
              ],
            ),
            const SizedBox(
              height: 23,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) => CardListItem(
                  title: 'Item#${index + 1}',
                ),
              ),
            ),
            CustomButton(routerLink: RouterLinks.orderCard),
            BoxSize.sizedBoxWH(41),
          ],
        ),
      ),
    );
  }
}
