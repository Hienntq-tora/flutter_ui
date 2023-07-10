import 'package:flutter/material.dart';
import 'package:study_ui_flutter_tora_2/models/product_model.dart';
import 'package:study_ui_flutter_tora_2/screen/home_screen/home_screen_compoment/home_screen_product_details.dart';
import 'package:study_ui_flutter_tora_2/styles/colors_style.dart';

class HomeScreenContent extends StatefulWidget {
  const HomeScreenContent({Key? key}) : super(key: key);

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
    _tabController = TabController(length: categories.length, initialIndex: selectedCategory, vsync: this);
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
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: TabBar(
                controller: _tabController,
                indicatorWeight: 2.0,
                isScrollable: true,
                indicatorColor:ThemeColors.colorTabbar,
                labelColor: ThemeColors.colorTabbar,
                unselectedLabelColor:ThemeColors.colorGrey,
                tabs: List.generate(categories.length, (index) {
                  return Tab(
                    child:  Container(
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
                children: List.generate(categories.length, (index) {
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