import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:study_ui_flutter_tora_2/components/box_componets.dart';
import 'package:study_ui_flutter_tora_2/components/button_componets.dart';
import 'package:study_ui_flutter_tora_2/header/current_appbar.dart';
import 'package:study_ui_flutter_tora_2/models/profile_model.dart';
import 'package:study_ui_flutter_tora_2/router/routerlinks.dart';
import 'package:study_ui_flutter_tora_2/styles/colors_style.dart';

import '../../components/text_componets.dart';
import '../../models/payment_model.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  ProfileScreenState createState() => ProfileScreenState();
}

class ProfileScreenState extends State<ProfileScreen> {
  int selectedCard = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CurrentAppbar(title: 'My Profile'),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 12, left: 50, right: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText.titleCard("Information"),
                BoxSize.sizedBoxH20(),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.03),
                        offset: Offset(0, 10),
                        blurRadius: 40,
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Image.asset(
                              profile.imagePath,
                              height: 60,
                              width: 60,
                              fit: BoxFit.cover,
                            ),
                            BoxSize.sizedBoxW20(),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  CustomText.nameProfile(profile.name),
                                  BoxSize.sizedBoxH9(),
                                  CustomText.emailProflie(profile.email),
                                  BoxSize.sizedBoxH9(),
                                  CustomText.descriptionProfile(
                                      profile.description),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText.titleCard("Payment Method"),
                BoxSize.sizedBoxH20(),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.03),
                        offset: Offset(0, 10),
                        blurRadius: 40,
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: ListTile(
                    title: Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Column(
                        children: dataList.asMap().entries.map(
                          (item) {
                            final index = item.key;
                            final items = item.value;
                            final isLastItem = index == dataList.length - 1;
                            return Column(
                              children: [
                                Row(
                                  children: [
                                    Radio<int>(
                                      value: index + 1,
                                      groupValue: selectedCard,
                                      focusColor: ThemeColors.colorIcon,
                                      activeColor: ThemeColors.colorIcon,
                                      onChanged: (value) {
                                        setState(
                                          () {
                                            selectedCard = value!;
                                          },
                                        );
                                      },
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              height: 40,
                                              width: 40,
                                              decoration: BoxDecoration(
                                                color: items.color,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Align(
                                                alignment: Alignment.center,
                                                child: SvgPicture.asset(
                                                  items.imageAsset,
                                                ),
                                              ),
                                            ),
                                            BoxSize.sizedBoxW10(),
                                            CustomText.titleProfile(items.title),
                                            BoxSize.sizedBoxH20(),
                                          ],
                                        ),
                                        BoxSize.sizedBoxH10(),
                                        if (!isLastItem)
                                          Container(
                                            alignment: Alignment.center,
                                            width: 200,
                                            height: 1,
                                            color:
                                                Colors.black.withOpacity(0.3),
                                          ),
                                      ],
                                    ),
                                  ],
                                ),
                                BoxSize.sizedBoxH10(),
                              ],
                            );
                          },
                        ).toList(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          BoxSize.sizedBoxWH(30),
          CustomButton(routerLink: RouterLinks.notUpdateProfile),
        ],
      ),
    );
  }
}
