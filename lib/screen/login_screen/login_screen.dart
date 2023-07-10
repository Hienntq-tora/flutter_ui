import 'package:flutter/material.dart';
import 'package:study_ui_flutter_tora_2/screen/login_screen/login_compoment/sign_in_form.dart';
import 'package:study_ui_flutter_tora_2/screen/login_screen/login_compoment/sign_up_form.dart';
import 'package:study_ui_flutter_tora_2/styles/colors_style.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, initialIndex: 0, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 382,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30.0),
                bottomRight: Radius.circular(30.0),
              ),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.6),
                  spreadRadius: 0,
                  blurRadius: 30.0,
                  offset: const Offset(0, -4),
                ),
              ],
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 128, bottom: 55),
                  child: SizedBox(
                    child: Image.asset(
                      'assets/images/logo_200x200.png',
                      width: 131,
                      height: 162,
                    ),
                  ),
                ),
                Expanded(
                  child: TabBar(
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorColor: ThemeColors.colorTabbar,
                    labelColor: Colors.black,
                    controller: _tabController,
                    tabs: const <Widget>[
                      Tab(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40),
                          child: Text(
                            'Login',
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: ' SF Pro Text',
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      Tab(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40),
                          child: Text(
                            'Sign-up',
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: ' SF Pro Text',
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const <Widget>[
                SignInForm(),
                SignUpForm(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
