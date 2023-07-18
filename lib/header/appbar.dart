import 'package:flutter/material.dart';
import 'current_appbar.dart';
import 'home_appbar.dart';
import 'product_details_appbar.dart';
import 'searchh_appbar.dart';

PreferredSizeWidget getAppbar(
    BuildContext context, String currentPage, String? titles, String? search) {
  if (currentPage == 'home') {
    return const HomeAppbar();
  } else if (currentPage == 'header') {
    return CurrentAppbar(title: titles ?? '');
  } else if (currentPage == 'search') {
    return SearchAppbar(
        onSearch: search != null ? (String value) {} : null, search: '');
  } else if (currentPage == 'product detail') {
    return const ProductDetailAppbar();
  } else {
    return AppBar();
  }
}
