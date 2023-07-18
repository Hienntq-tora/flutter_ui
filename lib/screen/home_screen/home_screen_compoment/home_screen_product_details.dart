import 'package:flutter/material.dart';

import '../../../models/product_model.dart';
import '../../../router/router.dart';
import 'home_screen_product_card.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({
    super.key,
    required this.currentIndex,
  });
  final int currentIndex;

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
      children: <Widget>[
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories[widget.currentIndex].productList.length,
            itemBuilder: (BuildContext context, int index) {
              final ProductModel product =
                  categories[widget.currentIndex].productList[index];
              return Padding(
                padding: const EdgeInsets.only(left: 34),
                child: GestureDetector(
                  onDoubleTap: () {
                    Navigator.pushNamed(context, AppRoutes.productdetails);
                  },
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
