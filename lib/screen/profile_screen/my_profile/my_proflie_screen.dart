import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:study_ui_flutter_tora_2/components/text_componets.dart';
import 'package:study_ui_flutter_tora_2/header/appbar.dart';
import 'package:study_ui_flutter_tora_2/styles/colors_style.dart';

import '../../../components/box_componets.dart';
import '../../../components/button_componets.dart';
import '../../../models/profile_model.dart';
import '../../../router/router.dart';
import '../../../router/routerlinks.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({super.key});

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppbar(context, 'header', ''),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 50, right: 50, top: 10, bottom: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText.title34('My Profile'),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomText.titleCard('Personal details'),
                  const SizedBox(
                    width: 100,
                  ),
                  const Text(
                    'change',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: ThemeColors.colorText,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 11,
              ),
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
                                const SizedBox(
                                  height: 6,
                                ),
                                CustomText.emailProflie(profile.email),
                                const SizedBox(
                                  height: 7,
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  width: 200,
                                  height: 1,
                                  color: Colors.black.withOpacity(0.3),
                                ),
                                const SizedBox(
                                  height: 7,
                                ),
                                CustomText.emailProflie(
                                    profile.phone.toString()),
                                const SizedBox(
                                  height: 7,
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  width: 200,
                                  height: 1,
                                  color: Colors.black.withOpacity(0.3),
                                ),
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
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  children: [
                    Container(
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomText.titleCard('Orders'),
                            const Spacer(),
                            IconButton(
                              icon: SvgPicture.asset(
                                  'assets/images/svg/chevron-right.svg'),
                              onPressed: () {
                                Navigator.pushNamed(context, AppRoutes.order);
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 27,
                    ),
                    Container(
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomText.titleCard('Pending reviews'),
                            const Spacer(),
                            IconButton(
                              icon: SvgPicture.asset(
                                  'assets/images/svg/chevron-right.svg'),
                              onPressed: () {
                                Navigator.pushNamed(context, AppRoutes.home);
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 27,
                    ),
                    Container(
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomText.titleCard('Faq'),
                            const Spacer(),
                            IconButton(
                              icon: SvgPicture.asset(
                                  'assets/images/svg/chevron-right.svg'),
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, AppRoutes.home);
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 27,),
                    Container(
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomText.titleCard('Help'),
                            const Spacer(),
                            IconButton(
                              icon: SvgPicture.asset(
                                  'assets/images/svg/chevron-right.svg'),
                              onPressed: () {
                                Navigator.pushNamed(context, AppRoutes.home);
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              BoxSize.sizedBoxWH(30),
              CustomButton(routerLink: RouterLinks.myProfile),
            ],
          ),
        ),
      ),
    );
  }
}
