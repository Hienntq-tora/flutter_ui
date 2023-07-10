import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:study_ui_flutter_tora_2/router/router.dart';

class HomeAppbar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppbar(BuildContext context, {super.key});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 120,
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        splashRadius: 24.0,
        padding: EdgeInsets.zero,
        onPressed: () {},
        icon: Image.asset('assets/images/menu_appbar.png'),
      ),
      actions: [
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
