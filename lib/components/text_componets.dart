import 'package:flutter/material.dart';
import '../styles/colors_style.dart';

class CustomText extends Text {
  CustomText(
    super.data, {
    super.key,
    double? fontSize,
    Color? color,
    FontWeight? fontWeight,
    super.maxLines,
    double? lineHeight,
    String? fontFamily,
    super.textAlign,
    super.overflow,
  }) : super(
          style: TextStyle(
            color: color,
            fontSize: fontSize,
            fontFamily: fontFamily,
            fontWeight: fontWeight,
            height: lineHeight,
          ),
        );

  static CustomText titleHeader(String text) {
    return CustomText(
      text,
      fontSize: 18,
      fontWeight: FontWeight.w600,
      fontFamily: 'SF Pro Text',
    );
  }

  static CustomText titleCard(String text) {
    return CustomText(
      text,
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    );
  }

  static CustomText titleProfile(String text) {
    return CustomText(
      text,
      fontSize: 17,
      fontFamily: 'SF Pro Text',
      fontWeight: FontWeight.w400,
      color: Colors.black,
    );
  }

  static CustomText titleDetails(String text) {
    return CustomText(
      text,
      fontSize: 17,
      fontFamily: 'SF Pro Text',
      fontWeight: FontWeight.w600,
      color: Colors.black,
    );
  }

  static CustomText nameProfile(String text) {
    return CustomText(
      text,
      fontSize: 18,
      fontFamily: 'SF Pro Text',
      fontWeight: FontWeight.w600,
    );
  }

  static CustomText emailProflie(String text) {
    return CustomText(
      text,
      fontSize: 13,
      fontFamily: 'SF Pro Text',
      fontWeight: FontWeight.w400,
      color: Colors.black.withOpacity(0.5),
    );
  }

  static CustomText descriptionProfile(String text) {
    return CustomText(
      text,
      fontSize: 13,
      fontFamily: 'SF Pro Text',
      fontWeight: FontWeight.w400,
      color: Colors.black.withOpacity(0.5),
      maxLines: 2,
    );
  }

  static CustomText productTitle(String text) {
    return CustomText(
      text,
      fontSize: 22,
      fontFamily: 'SF Pro Rounded',
      fontWeight: FontWeight.w600,
      lineHeight: 1.0,
    );
  }

  static CustomText productNum(String text) {
    return CustomText(
      text,
      fontSize: 17,
      fontFamily: 'SF Pro Rounded',
      fontWeight: FontWeight.w700,
      color: ThemeColors.colorTextbold,
      lineHeight: 1.0,
    );
  }

  static Widget notFoundText(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 17),
      child: CustomText(
        text,
        fontSize: 28,
        fontFamily: 'SF Pro Text',
        textAlign: TextAlign.center,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
    );
  }

  static Widget notFoundDesText(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: Wrap(
        children: <Widget>[
          CustomText(
            text,
            fontSize: 17,
            fontFamily: 'SF Pro Text',
            textAlign: TextAlign.center,
            fontWeight: FontWeight.normal,
            color: Colors.black.withOpacity(1.0),
            lineHeight: 1.0,
          ),
        ],
      ),
    );
  }

  static CustomText title34(String text) {
    return CustomText(
      text,
      fontSize: 34,
      fontFamily: 'SF Pro Text',
      fontWeight: FontWeight.w600,
      color: Colors.black,
    );
  }

  static CustomText descriptionX15(String text) {
    return CustomText(
      text,
      fontSize: 15,
      fontFamily: 'SF Pro Text',
      fontWeight: FontWeight.w400,
      color: Colors.black,
      maxLines: 2,
    );
  }

  static CustomText nameX15(String text) {
    return CustomText(
      text,
      fontSize: 17,
      fontFamily: 'SF Pro Text',
      fontWeight: FontWeight.w500,
    );
  }
}
