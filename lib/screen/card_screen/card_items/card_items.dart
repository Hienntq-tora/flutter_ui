import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';

import '../../../components/box_componets.dart';
import '../../../components/text_componets.dart';
import '../../../styles/colors_style.dart';

class CardListItem extends StatefulWidget {
  final String title;

  const CardListItem({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  State<CardListItem> createState() => _CardListItemState();
}

class _CardListItemState extends State<CardListItem> {
int quantity = 1;

  void incrementQuantity() {
    setState(() {
      quantity++;
    });
  }

  void decrementQuantity() {
    if (quantity > 0) {
      setState(() {
        quantity--;
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Slidable(
      actionPane: const SlidableDrawerActionPane(),
      fastThreshold: 24,
      secondaryActions: [
        IconSlideAction(
          color: ThemeColors.colorBackgroup,
          iconWidget: Container(
            width: 45,
            height: 45,
            margin: const EdgeInsets.only(left: 20),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: ClipOval(
              child: Container(
                width: 14,
                height: 16,
                color: ThemeColors.colorMain, // Màu nền của hình ảnh
                child: Center(
                  child: SvgPicture.asset(
                    'assets/images/svg/heart.svg',
                  ),
                ),
              ),
            ),
          ),
          onTap: () {},
        ),
        IconSlideAction(
          color: ThemeColors.colorBackgroup,
          iconWidget: Container(
            height: 45,
            width: 70,
            margin: const EdgeInsets.only(right: 15),
            decoration: const BoxDecoration(
              color:ThemeColors.colorMain,
              shape: BoxShape.circle,
            ),
          ),
          onTap: () {},
        ),
      ],
      child: ListTile(
        title: Container(
          height: 102,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ClipOval(
                child: Image.asset(
                  'assets/images/product_image/product_1.png',
                  height: 60,
                  width: 60,
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText.titleCard('Veggie tomato mix'),
                  const Text(
                    '#1,900',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: ThemeColors.colorText,
                      fontFamily: 'SF Pro Rounded',
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 42,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      color: ThemeColors.colorIcon,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        GestureDetector(
                          onTap: decrementQuantity,
                          child: const Text(
                            "-",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontFamily: 'SF Pro Rounded',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        BoxSize.sizedBoxW8(),
                        Text(
                          quantity.toString(),
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.white,
                            fontFamily: 'SF Pro Rounded',
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        BoxSize.sizedBoxW8(),
                        GestureDetector(
                          onTap: incrementQuantity,
                          child: const Text(
                            "+",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontFamily: 'SF Pro Rounded',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
