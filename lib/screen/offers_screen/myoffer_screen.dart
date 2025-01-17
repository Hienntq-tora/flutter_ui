import 'package:flutter/material.dart';

import '../../components/text_componets.dart';
import '../../header/appbar.dart';

class MyofferScreen extends StatelessWidget {
  const MyofferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppbar(context, 'header', '', ''),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: CustomText.title34('My Profile'),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CustomText.notFoundText('ohh snap!  No offers yet'),
                CustomText.notFoundDesText(
                    'Bella dose’t have any offers yet please check again.'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
