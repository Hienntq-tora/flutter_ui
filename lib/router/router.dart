import 'package:flutter/material.dart';

import '../screen/card_screen/order_card.dart';
import '../screen/checkout_screen/checkout_delivery_screen.dart';
import '../screen/checkout_screen/checkout_payment/checkout_payment.dart';
import '../screen/history_screen/history_screen.dart';
import '../screen/home_screen/home_screen.dart';
import '../screen/home_screen/menu_screen.dart';
import '../screen/login_screen/login_screen.dart';
import '../screen/network/internet_connection.dart';
import '../screen/offers_screen/myoffer_screen.dart';
import '../screen/order_screen/order_screen.dart';
import '../screen/product_detail/product_detail_screen.dart';
import '../screen/profile_screen/my_profile/my_proflie_screen.dart';
import '../screen/profile_screen/profile_screen.dart';
import '../screen/search_screen/search_main.dart';
import '../screen/start_screen/start_screen.dart';

class AppRoutes {
  static const String start = '/';
  static const String home = '/home';
  static const String order = '/order';
  static const String profile = '/profile';
  static const String history = '/history';
  static const String productdetails = '/productdetails';
  static const String checkoutDelivery = '/checkoutDelivery';
  static const String checkoutPayment = '/checkoutPayment';
  static const String orderCard = '/orderCard';
  static const String myProfile = '/myProfile';
  static const String login = '/login';
  static const String search = '/searchScreen';
  static const String menu = '/menu';
  static const String internet = '/internet';
  static const String myoffer = '/myoffer';

  static Map<String, WidgetBuilder> get routes {
    return <String, Widget Function(BuildContext)>{
      start: (BuildContext context) => const StartScreen(),
      home: (BuildContext context) => const HomeScreen(),
      order: (BuildContext context) => const OrderScreen(),
      profile: (BuildContext context) => const ProfileScreen(),
      history: (BuildContext context) => const HistoryScreen(),
      login: (BuildContext context) => const LoginScreen(),
      checkoutDelivery: (BuildContext context) =>
          const CheckoutDeliveryScreen(),
      checkoutPayment: (BuildContext context) => const CheckoutpaymentScreen(),
      orderCard: (BuildContext context) => const OrderCard(),
      productdetails: (BuildContext context) => const ProductDetailScreen(),
      myProfile: (BuildContext context) => const MyProfileScreen(),
      search: (BuildContext context) => const SearchScreen(),
      menu: (BuildContext context) => const MenuScreen(),
      internet: (BuildContext context) => const InternetConnectScreen(),
      myoffer: (BuildContext context) => const MyofferScreen(),
    };
  }
}
