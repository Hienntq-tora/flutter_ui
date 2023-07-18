import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_transition/page_transition.dart';

import '../../../styles/colors_style.dart';
import '../../login_screen/login_screen.dart';

class MenuBodyScreen extends StatefulWidget {
  const MenuBodyScreen({super.key});

  @override
  State<MenuBodyScreen> createState() => _MenuBodyScreenState();
}

class _MenuBodyScreenState extends State<MenuBodyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.colorMain,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 120, 10, 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipOval(
                      child:
                          SvgPicture.asset('assets/images/svg/gg_profile.svg'),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text(
                          'Profile',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          height: 26,
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 132,
                          height: 1,
                          color: Colors.white.withOpacity(0.3),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipOval(
                      child:
                          SvgPicture.asset('assets/images/svg/icons8_buy.svg'),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text(
                          'orders',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          height: 26,
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 132,
                          height: 1,
                          color: Colors.white.withOpacity(0.3),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipOval(
                      child: SvgPicture.asset(
                          'assets/images/svg/ic_outline-local-offer.svg'),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text(
                          'offer and promo',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          height: 26,
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 132,
                          height: 1,
                          color: Colors.white.withOpacity(0.3),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipOval(
                      child: SvgPicture.asset(
                          'assets/images/svg/ic_outline-sticky-note-2.svg'),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text(
                          'Privacy policy',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          height: 26,
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 132,
                          height: 1,
                          color: Colors.white.withOpacity(0.3),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipOval(
                      child: SvgPicture.asset(
                          'assets/images/svg/whh_securityalt.svg'),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Security',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 26,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition<dynamic>(
                    type: PageTransitionType.rightToLeft,
                    child: const LoginScreen(),
                  ),
                );
              },
              child: Row(
                children: <Widget>[
                  const Text(
                    'Sign-out',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SvgPicture.asset('assets/images/svg/arrow1.svg'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
