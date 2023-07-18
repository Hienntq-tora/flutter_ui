import 'package:flutter/material.dart';

import '../../header/appbar.dart';
import '../../styles/colors_style.dart';
import '../history_screen/history_screen.dart';
import '../product_detail/product_detail_screen.dart';
import '../profile_screen/profile_screen.dart';
import 'home_screen_compoment/home_screen_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String id = 'home';

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  late final GlobalKey<NavigatorState> _navigatorKey =
      GlobalKey<NavigatorState>();
  int _currentIndex = 0;
  final PageController _pageController = PageController();
  List<Widget> tabs = <Widget>[
    const BodyHome(),
    const ProductDetailScreen(),
    const ProfileScreen(),
    const HistoryScreen(),
  ];

  bool hideBottomNavigationBarItems = false;

  List<int> pagesWithHiddenBottomNav = <int>[1, 2, 3];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bool showBottomNavigationBarItems =
        !pagesWithHiddenBottomNav.contains(_currentIndex);
    return Scaffold(
      key: _navigatorKey,
      appBar: _currentIndex == 0 ? getAppbar(context, 'home', '', '') : null,
      body: PageView(
        controller: _pageController,
        children: tabs,
        onPageChanged: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      bottomNavigationBar: showBottomNavigationBarItems
          ? BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.transparent,
              elevation: 0,
              currentIndex: _currentIndex,
              iconSize: 31.0,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_outlined,
                    color: ThemeColors.colorIconGrey,
                  ),
                  label: 'Home',
                  activeIcon: Icon(
                    Icons.home,
                    color: ThemeColors.colorIcon,
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.favorite_border,
                    color: ThemeColors.colorIconGrey,
                  ),
                  label: 'Favorite',
                  activeIcon: Icon(
                    Icons.favorite,
                    color: ThemeColors.colorIcon,
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person_outline,
                    color: ThemeColors.colorIconGrey,
                  ),
                  label: 'Profile',
                  activeIcon: Icon(
                    Icons.person,
                    color: ThemeColors.colorIconGrey,
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.history,
                    color: ThemeColors.colorIconGrey,
                  ),
                  label: 'History',
                  activeIcon: Icon(
                    Icons.history,
                    color: ThemeColors.colorIcon,
                  ),
                ),
              ],
              onTap: (int index) {
                setState(
                  () {
                    _currentIndex = index;
                    _pageController.animateToPage(
                      index,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                  },
                );
              },
              selectedItemColor: ThemeColors.colorIcon,
            )
          : null,
    );
  }
}
