import 'package:flutter/material.dart';
import 'package:study_ui_flutter_tora_2/header/current_appbar.dart';
import 'package:study_ui_flutter_tora_2/header/home_appbar.dart';
import 'package:study_ui_flutter_tora_2/header/product_details_appbar.dart';

PreferredSizeWidget  getAppbar(BuildContext context, String currentPage, String titles) {
  if (currentPage == 'home') {
    return HomeAppbar(context);
  } else if (currentPage == 'header') {
    return CurrentAppbar(title: titles);
  } else if (currentPage == 'product detail') {
    return const ProductDetailAppbar();
  } 
  else {
    return AppBar();
  }
}





