import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../components/text_componets.dart';

class SearchNotFoundScreen extends StatelessWidget {
  const SearchNotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
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
                      'assets/images/svg/feather_search.svg',
                      width: 106,
                      height: 120,
                    ),
                  ),
                  CustomText.notFoundText('Item not found'),
                  CustomText.notFoundDesText(
                      'Try searching the item witha different keyword.'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
