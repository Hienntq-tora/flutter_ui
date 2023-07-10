// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:study_ui_flutter_tora_2/components/text_componets.dart';

import 'package:study_ui_flutter_tora_2/models/product_model.dart';
import 'package:study_ui_flutter_tora_2/styles/colors_style.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;
  const ProductCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 40.0),
            width: 220.0,
            height: 270.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Color.fromRGBO(57, 57, 57, 0.1),
                  offset: Offset(0, 30),
                  blurRadius: 60,
                  spreadRadius: 0,
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: 220.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 165.0,
                  width: 165.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(132.5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 7,
                          offset: const Offset(0, 1),
                        )
                      ]),
                  child: ClipOval(
                    child: Image.asset(
                      product.imagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 22,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28.0),
                  child: Text(
                    product.title,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: ThemeColors.colorBlack,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const SizedBox(height: 15.0),
                CustomText.productNum(product.number),
                const SizedBox(height: 39.0),
              ],
            ),
          )
        ],
      ),
    );
  }
}
