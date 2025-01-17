import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../components/box_componets.dart';
import '../../components/button_componets.dart';
import '../../components/text_componets.dart';
import '../../header/appbar.dart';
import '../../router/routerlinks.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppbar(context, 'header', 'History', ''),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            const SizedBox(
              height: 10,
            ),
            Column(
              children: <Widget>[
                SizedBox(
                  child: SvgPicture.asset(
                    'assets/images/svg/history_image.svg',
                    width: 106,
                    height: 120,
                  ),
                ),
                CustomText.notFoundText('No history yet'),
                CustomText.notFoundDesText(
                    'Hit the orange button down below to Create an order'),
              ],
            ),
            BoxSize.sizedBoxH10(),
            CustomButton(routerLink: RouterLinks.notFoundHistory),
          ],
        ),
      ),
    );
  }
}
