

import 'package:study_ui_flutter_tora_2/router/router.dart';

class RouterLinks {
  final String title;
  final String linkRouter;

  RouterLinks({
    required this.title,
    required this.linkRouter,
  });

  static final RouterLinks notFoundOrder = RouterLinks(
    title: 'Start ordering',
    linkRouter: AppRoutes.order,
  );

  static final RouterLinks notFoundHistory = RouterLinks(
    title: 'Start odering',
    linkRouter:AppRoutes.history,
  );
  static final RouterLinks notUpdateProfile = RouterLinks(
    title: 'Updatet',
    linkRouter:AppRoutes.profile,
  );

  static final RouterLinks getStarted = RouterLinks(
    title: 'Get Started',
    linkRouter: AppRoutes.home,
  );

  static final RouterLinks startLogin = RouterLinks(
    title: 'Login',
    linkRouter: AppRoutes.home,
  );
  static final RouterLinks productDetail = RouterLinks(
    title: 'Add to cart',
    linkRouter: AppRoutes.productdetails,
  );

  static final RouterLinks signUp = RouterLinks(
    title: 'Sign Up',
    linkRouter: AppRoutes.login,
  );
}