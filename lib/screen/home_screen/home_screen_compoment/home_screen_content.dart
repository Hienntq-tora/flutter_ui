import 'package:flutter/material.dart';

import '../../../models/product_model.dart';
import '../../../styles/colors_style.dart';
import 'home_screen_product_details.dart';

class HomeScreenContent extends StatefulWidget {
  const HomeScreenContent({super.key});

  @override
  HomeScreenContentState createState() => HomeScreenContentState();
}

class HomeScreenContentState extends State<HomeScreenContent>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  int selectedCategory = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
        length: categories.length, initialIndex: selectedCategory, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      decoration: const BoxDecoration(),
      child: DefaultTabController(
        length: categories.length,
        initialIndex: selectedCategory,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: TabBar(
                controller: _tabController,
                isScrollable: true,
                indicatorColor: ThemeColors.colorTabbar,
                labelColor: ThemeColors.colorTabbar,
                unselectedLabelColor: ThemeColors.colorGrey,
                tabs: List<Widget>.generate(categories.length, (int index) {
                  return Tab(
                    child: Container(
                      width: 75,
                      alignment: Alignment.center,
                      child: Text(
                        categories[index].title,
                      ),
                    ),
                  );
                }),
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: List<Widget>.generate(categories.length, (int index) {
                  return ProductDetails(currentIndex: index);
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
