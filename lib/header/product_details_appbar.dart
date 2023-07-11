// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:study_ui_flutter_tora_2/router/router.dart';
import 'package:study_ui_flutter_tora_2/screen/home_screen/home_screen.dart';

class ProductDetailAppbar extends StatelessWidget implements PreferredSizeWidget {
    const ProductDetailAppbar({
    Key? key,
    this.backPress,
  }) : super(key: key);

  final VoidCallback? backPress;

 
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 90,
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: Align(
        alignment: Alignment.center,
        child: IconButton(
          icon: SvgPicture.asset(
          'assets/images/svg/chevron-left.svg'
        ),
          onPressed: () {
            if (backPress != null) {
              backPress!();
            } else {
              Navigator.of(context).pushReplacement(
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      const HomeScreen(),
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    return SlideTransition(
                      position: Tween<Offset>(
                        begin: const Offset(-1.0, 0.0),
                        end: Offset.zero,
                      ).animate(animation),
                      child: child,
                    );
                  },
                ),
              );
            }
          },
        ),
      ),
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 36.0),
          child: IconButton(
            splashRadius: 24.0,
            icon: SvgPicture.asset('assets/images/svg/heartblack.svg'),
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.order);
            },
          ),
        ),
      ],
    );
  }
 @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
