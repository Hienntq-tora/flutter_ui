import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../router/router.dart';

class HomeAppbar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppbar({super.key});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 120,
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.only(top: 10.0, left: 30),
        child: Container(
          alignment: Alignment.centerLeft,
          child: IconButton(
            splashRadius: 24.0,
            padding: EdgeInsets.zero,
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.menu);
            },
            icon: Image.asset('assets/images/menu_appbar.png'),
          ),
        ),
      ),
      actions: <Widget>[
        Container(
          margin: const EdgeInsets.only(right: 36.0),
          child: IconButton(
            splashRadius: 24.0,
            icon: SvgPicture.asset('assets/images/svg/shopping-cart.svg'),
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
