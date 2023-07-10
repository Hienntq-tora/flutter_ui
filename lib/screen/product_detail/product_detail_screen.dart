import 'package:flutter/material.dart';
import 'package:study_ui_flutter_tora_2/components/button_componets.dart';
import 'package:study_ui_flutter_tora_2/components/text_componets.dart';
import 'package:study_ui_flutter_tora_2/header/appbar.dart';
import 'package:study_ui_flutter_tora_2/router/routerlinks.dart';
import 'package:study_ui_flutter_tora_2/styles/colors_style.dart';


class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({Key? key}) : super(key: key);

  @override
  ProductDetailScreenState createState() => ProductDetailScreenState();
}

class ProductDetailScreenState extends State<ProductDetailScreen>
    with SingleTickerProviderStateMixin {
  final List<String> items = [
    'assets/images/product_image/product_1.png',
    'assets/images/product_image/product_2.png',
    'assets/images/product_image/product_1.png',
    'assets/images/product_image/product_2.png',
  ];

  late PageController _pageController;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: currentIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void onPageChanged(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppbar(context, 'product detail', ''),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 50, right: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 241,
                child: PageView(
                  controller: _pageController,
                  onPageChanged: onPageChanged,
                  children: List.generate(items.length, (index) {
                    return Center(
                      child: ClipOval(
                        child: Image.asset(
                          items[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  }),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(items.length, (index) {
                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    width: currentIndex == index ? 20 : 10,
                    height: 10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: currentIndex == index
                          ? ThemeColors.colorMain
                          : Colors.grey,
                    ),
                  );
                }),
              ),
              const SizedBox(height: 16),
              const Text(
                'Veggie tomato mix',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'SF Pro Rounded'),
              ),
              const SizedBox(height: 12),
              const Text(
                'N1,900',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'SF Pro Rounded',
                  color: ThemeColors.colorText,
                ),
              ),
              const SizedBox(height: 16),
              Container(
                alignment: Alignment.center,
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     CustomText.titleDetails('Delivery info'),
                    const SizedBox(height: 8),
                    CustomText.descriptionProfile(
                        'Delivered between Monday Aug and Thursday 20 from 8 PM to 9:32 PM'),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText.titleDetails('Return policy'),
                    const SizedBox(height: 8),
                    CustomText.descriptionProfile(
                        'All our foods are double checked before leaving our stores, so by any case you found a broken food, please contact our hotline immediately.'),
                  ],
                ),
              ),
              const SizedBox(height: 100),
              CustomButton(routerLink: RouterLinks.productDetail),
              const SizedBox(height: 41),
            ],
          ),
        ),
      ),
    );
  }
}
