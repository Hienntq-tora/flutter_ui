import 'package:flutter/material.dart';

import '../../models/product_model.dart';
import '../../router/router.dart';
import '../home_screen/home_screen_compoment/home_screen_product_card.dart';

class Tile extends StatefulWidget {
  Tile({
    super.key,
    required this.index,
    this.extent,
    this.bottomSpace,
    required this.currentIndex,
  });

  final int index;
  final double? extent;
  final double? bottomSpace;
  final int currentIndex;
  final List<ProductModel> allProducts = getAllProducts();

  static List<ProductModel> getAllProducts() {
    return categories
        .expand((Category category) => category.productList)
        .toList();
  }

  @override
  State<Tile> createState() => _TileState();
}

class _TileState extends State<Tile> {
  @override
  Widget build(BuildContext context) {
    final ProductModel product = widget.allProducts[widget.index];
    return GestureDetector(
      onDoubleTap: () {
        Navigator.pushNamed(context, AppRoutes.productdetails);
      },
      child: ProductCard(product: product),
    );
  }
}
