import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../styles/colors_style.dart';
import 'home_screen.dart';
import 'home_screen_compoment/menu_screen_body.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.colorMain,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Positioned(
              width: 300,
              height: MediaQuery.of(context).size.height,
              child: const MenuBodyScreen(),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition<dynamic>(
                    type: PageTransitionType.leftToRight,
                    child: const HomeScreen(),
                  ),
                );
              },
              child: Transform.translate(
                offset: const Offset(180, -30),
                child: Transform.scale(
                  scale: 0.8,
                  child: Stack(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          const SizedBox(
                            height: 145,
                          ),
                          Container(
                            width: 400,
                            height: 600,
                            decoration: const BoxDecoration(
                              color: Color(0xffF96B3B),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30.0),
                                bottomLeft: Radius.circular(30.0),
                              ),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                  color: Color(0xffF96B3B),
                                  spreadRadius: 2,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Transform.translate(
                        offset: const Offset(-20, 0),
                        child: Transform.scale(
                          scale: 0.8,
                          child: const ClipRRect(
                              borderRadius: BorderRadius.all(
                                Radius.circular(30.0),
                              ),
                              child: HomeScreen()),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
