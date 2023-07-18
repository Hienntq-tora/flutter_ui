import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../router/router.dart';
import '../../../styles/colors_style.dart';

class HomeScreenSearch extends StatefulWidget {
  const HomeScreenSearch({super.key});

  @override
  State<HomeScreenSearch> createState() => _HomeScreenSearchState();
}

class _HomeScreenSearchState extends State<HomeScreenSearch> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.only(top: 43, bottom: 28),
          child: SizedBox(
            width: double.infinity,
            child: Text(
              'Delicious \nfood for you',
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.w700,
                fontFamily: 'SF Pro Rounded',
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: 314,
          child: ColoredBox(
            color: ThemeColors.colorBackgroup,
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  AppRoutes.search,
                );
              },
              child: TextField(
                enabled: false,
                decoration: InputDecoration(
                  fillColor: const Color(0xFFEFEEEE),
                  filled: true,
                  border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(
                      Radius.circular(30.0),
                    ),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30.0),
                    ),
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  prefixIcon: SvgPicture.asset(
                    'assets/images/svg/search.svg',
                  ),
                  hintText: 'Search',
                  hintStyle: const TextStyle(
                    fontFamily: 'SF Pro Rounded',
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
