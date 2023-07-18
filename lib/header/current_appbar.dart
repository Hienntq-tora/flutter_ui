import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../components/text_componets.dart';
import '../screen/home_screen/home_screen.dart';
import '../styles/colors_style.dart';

class CurrentAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CurrentAppbar({
    super.key,
    required this.title,
    this.backPress,
  });

  final String title;
  final VoidCallback? backPress;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ThemeColors.colorBackgroup,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset('assets/images/svg/chevron-left.svg'),
        onPressed: () {
          if (backPress != null) {
            backPress!();
          } else {
            Navigator.of(context).pushReplacement(
              PageRouteBuilder<dynamic>(
                pageBuilder: (BuildContext context, Animation<double> animation,
                        Animation<double> secondaryAnimation) =>
                    const HomeScreen(),
                transitionsBuilder: (BuildContext context,
                    Animation<double> animation,
                    Animation<double> secondaryAnimation,
                    Widget child) {
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
      title: CustomText.titleHeader(title),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
