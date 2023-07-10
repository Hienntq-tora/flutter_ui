// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:study_ui_flutter_tora_2/models/product_model.dart';
import 'package:study_ui_flutter_tora_2/screen/home_screen/home_screen_compoment/home_screen_product_card.dart';

class ProductDetails extends StatefulWidget {
  final int currentIndex;

  const ProductDetails({
    Key? key,
    required this.currentIndex,
  }) : super(key: key);

  @override
  ProductDetailsState createState() => ProductDetailsState();
}

class ProductDetailsState extends State<ProductDetails> {
  late PageController _pageController;
  int initPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: initPage,
      viewportFraction: 0.63,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories[widget.currentIndex].productList.length,
            itemBuilder: (context, index) {
              final product =
                  categories[widget.currentIndex].productList[index];
              return Padding(
                padding: const EdgeInsets.only(left: 34),
                child: GestureDetector(
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    child: ProductCard(product: product),
                  ),
                ),
              );
            },
          ),
        ),
        
      ],
    );
  }
}
