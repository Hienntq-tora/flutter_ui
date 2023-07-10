import 'package:flutter/material.dart';
import 'package:study_ui_flutter_tora_2/screen/history_screen/history_screen.dart';
import 'package:study_ui_flutter_tora_2/screen/home_screen/home_screen.dart';
import 'package:study_ui_flutter_tora_2/screen/login_screen/login_screen.dart';
import 'package:study_ui_flutter_tora_2/screen/order_screen/order_screen.dart';
import 'package:study_ui_flutter_tora_2/screen/product_detail/product_detail_screen.dart';
import 'package:study_ui_flutter_tora_2/screen/profile_screen/profile_screen.dart';
import 'package:study_ui_flutter_tora_2/screen/start_screen/start_screen.dart';

class AppRoutes {
  static const String start = '/';
  static const String home = '/home';
  static const String order = '/order';
  static const String profile = '/profile';
  static const String history = '/history';
  static const String productdetails = '/productdetails';
  static const String login = '/login';

  static Map<String, WidgetBuilder> get routes {
    return {
      start: (context) => const StartScreen(),
      home: (context) => const HomeScreen(),
      order: (context) => const OrderScreen(),
      profile: (context) => const ProfileScreen(),
      history: (context) => const HistoryScreen(),
      login: (context) => const LoginScreen(),
      productdetails: (context) => const ProductDetailScreen(),
    };
  }
}