import 'package:flutter/material.dart';
import '../../../components/box_componets.dart';
import '../../../components/button_componets.dart';
import '../../../router/routerlinks.dart';
import '../../../styles/colors_style.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({super.key, this.onPressed});
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.fromLTRB(50, 42, 50, 36),
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Email address',
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
                    decoration: InputDecoration(
                      hintText: 'Email address',
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
                children: <Widget>[
                  Text(
                    'Password',
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
                      hintText: 'Password',
                      border: UnderlineInputBorder(),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 90),
              child: Text(
                'Forgot passcode?',
                style: TextStyle(
                    fontSize: 17,
                    color: ThemeColors.colorTextbold,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              child: CustomButton(
                routerLink: RouterLinks.startLogin,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
