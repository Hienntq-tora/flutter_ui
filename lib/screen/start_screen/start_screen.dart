import 'package:flutter/material.dart';
import 'package:study_ui_flutter_tora_2/screen/login_screen/login_screen.dart';
import 'package:study_ui_flutter_tora_2/styles/colors_style.dart';

import '../profile_screen/my_profile/my_proflie_screen.dart';

class StartScreen extends StatefulWidget {
  static const String routeName = '/start';
  const StartScreen({
    super.key,
  });

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFF460A),
      body: Padding(
        padding: const EdgeInsets.only(top: 56),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 49),
                  child: Container(
                    height: 73,
                    width: 73,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(150),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/logo.png'),
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 51, top: 31, bottom: 75),
                  child: SizedBox(
                    width: double.infinity,
                    child: Text(
                      'Food for Everyone',
                      style: TextStyle(
                        fontSize: 65,
                        fontWeight: FontWeight.w800,
                        fontFamily: 'SF Pro Rounded',
                        height: 0.86,
                        letterSpacing: -1.95,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 400,
                  width: double.infinity,
                  decoration: const BoxDecoration(),
                  child: Stack(
                    fit: StackFit.passthrough,
                    children: [
                      Positioned(
                        right: -20,
                        top: 20,
                        child: Container(
                          height: 434,
                          width: 262,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image:
                                  AssetImage('assets/images/start_image_2.png'),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: -45,
                        child: Container(
                          height: 434,
                          width: 360,
                          transform: Matrix4.rotationZ(-3.1 * 0.0174533),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image:
                                  AssetImage('assets/images/start_image_1.png'),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        child: Container(
                          height: 20,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                Colors.transparent,
                                Colors.transparent,
                                Color(0xffFF460A),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.2),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: const Offset(
                                    0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(30)),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      minimumSize: const Size(314, 70),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()),
                      );
                    },
                    child: const Text(
                      'Get starteed',
                      style: TextStyle(
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w600,
                          fontSize: 17,
                          color: ThemeColors.colorTextButton),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
