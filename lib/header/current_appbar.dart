import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:study_ui_flutter_tora_2/components/text_componets.dart';
import 'package:study_ui_flutter_tora_2/screen/home_screen/home_screen.dart';
import 'package:study_ui_flutter_tora_2/styles/colors_style.dart';

class CurrentAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CurrentAppbar({
    Key? key,
    required this.title,
    this.backPress,
  }) : super(key: key);

  final String title;
  final VoidCallback? backPress;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ThemeColors.colorBackgroup,
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
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Center(child: CustomText.titleHeader(title)),
          ),
          const SizedBox(
            width: 50,
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
