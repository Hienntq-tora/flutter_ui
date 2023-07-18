import 'package:flutter/material.dart';

import 'home_screen_content.dart';
import 'home_screen_search.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: <Widget>[
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
