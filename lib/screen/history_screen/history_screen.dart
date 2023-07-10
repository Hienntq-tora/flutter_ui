import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:study_ui_flutter_tora_2/components/box_componets.dart';
import 'package:study_ui_flutter_tora_2/components/button_componets.dart';
import 'package:study_ui_flutter_tora_2/components/text_componets.dart';
import 'package:study_ui_flutter_tora_2/header/appbar.dart';
import 'package:study_ui_flutter_tora_2/router/routerlinks.dart';


class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: getAppbar(context,'header', 'History'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            const SizedBox(
              height: 10,
            ),
            Column(
              children: [
                SizedBox(
                  child: SvgPicture.asset(
                    'assets/images/svg/history_image.svg',
                    width: 106,
                    height: 120,
                  ),
                ),
                CustomText.notFoundText( 'No history yet'),
                CustomText.notFoundDesText( 'Hit the orange button down below to Create an order'),
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
