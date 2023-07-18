import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../components/button_componets.dart';
import '../../components/text_componets.dart';
import '../../router/routerlinks.dart';

class InternetConnectScreen extends StatelessWidget {
  const InternetConnectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 10,
            ),
            Column(
              children: <Widget>[
                SizedBox(
                  child: SvgPicture.asset(
                    'assets/images/svg/eva_wifi-off-fill.svg',
                    width: 106,
                    height: 120,
                  ),
                ),
                CustomText.notFoundText('No internet Connection'),
                CustomText.notFoundDesText(
                    'Your internet connection is currentlynot available please check or try again.'),
              ],
            ),
           const SizedBox(height: 55,),
            CustomButton(routerLink: RouterLinks.notInternet),
          ],
        ),
      ),
    );
  }
}
