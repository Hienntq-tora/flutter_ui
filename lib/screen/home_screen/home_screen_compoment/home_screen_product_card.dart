import 'package:flutter/material.dart';
import '../../../components/text_componets.dart';

import '../../../models/product_model.dart';
import '../../../styles/colors_style.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.product,
  });
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(top: 40.0),
          width: 220.0,
          height: 270.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: Colors.white,
            boxShadow: const <BoxShadow>[
              BoxShadow(
                color: Color.fromRGBO(57, 57, 57, 0.1),
                offset: Offset(0, 30),
                blurRadius: 60,
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: 220.0,
          child: Column(
            children: <Widget>[
              Container(
                height: 165.0,
                width: 165.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(132.5),
                    boxShadow: <BoxShadow>[
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
              const SizedBox(
                height: 22,
              ),
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
    );
  }
}
