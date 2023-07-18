import 'package:flutter/material.dart';

import '../../components/box_componets.dart';
import '../../components/text_componets.dart';
import '../../models/info_payment_model.dart';

class CardInfo extends StatelessWidget {
  const CardInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: ListView.builder(
        itemCount: infotPaymentList.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          final PaymentInfoModel items = infotPaymentList[index];
          final bool isLastItem = index == infotPaymentList.length - 1;
          return Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      CustomText.nameX15(items.name),
                      if (!isLastItem)
                        Container(
                          alignment: Alignment.center,
                          width: 200,
                          height: 1,
                          color: Colors.black.withOpacity(0.3),
                        ),
                    ],
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    width: 300,
                    child: Column(
                      children: <Widget>[
                        Text(
                          items.description,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        if (!isLastItem)
                          Container(
                            alignment: Alignment.center,
                            width: 200,
                            height: 1,
                            color: Colors.black.withOpacity(0.3),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      CustomText.descriptionX15(items.phone),
                      if (!isLastItem)
                        Container(
                          alignment: Alignment.center,
                          width: 200,
                          height: 1,
                          color: Colors.black.withOpacity(0.3),
                        ),
                    ],
                  ),
                ],
              ),
              BoxSize.sizedBoxH10(),
            ],
          );
        },
      ),
    );
  }
}
