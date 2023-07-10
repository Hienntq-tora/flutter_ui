import 'package:flutter/material.dart';
import 'package:study_ui_flutter_tora_2/components/box_componets.dart';
import 'package:study_ui_flutter_tora_2/components/button_componets.dart';
import 'package:study_ui_flutter_tora_2/router/routerlinks.dart';
import 'package:study_ui_flutter_tora_2/styles/colors_style.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.fromLTRB(50, 42, 50, 36),
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Email address",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: 'SF Pro Text',
                      fontSize: 15,
                      color: Colors.black.withOpacity(0.4),
                    ),
                  ),
                  const TextField(
                    style: TextStyle(
                      fontSize: 17,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w600,
                    ),
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: "Email address",
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 26),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Password",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      fontFamily: 'SF Pro Text',
                      color: Colors.black.withOpacity(0.4),
                    ),
                  ),
                  BoxSize.sizedBoxH9(),
                  const TextField(
                    style: TextStyle(
                      fontSize: 17,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w600,
                    ),
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Password",
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 90),
              child: Text(
                "Forgot passcode?",
                style: TextStyle(
                    fontSize: 17,
                    color: ThemeColors.colorTextbold,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              child: CustomButton(routerLink: RouterLinks.startLogin),
            ),
          ],
        ),
      ),
    );
  }
}
