import 'package:flutter/material.dart';
import 'package:study_ui_flutter_tora_2/screen/home_screen/home_screen_compoment/home_screen_search.dart';
import 'package:study_ui_flutter_tora_2/screen/home_screen/home_screen_compoment/home_screen_content.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({super.key});


  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 50),
            child: HomeScreenSearch(),
          ),
          SizedBox(height: 18.0),
          HomeScreenContent(),
        ],
      ),
    );
  }
}