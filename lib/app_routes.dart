import 'package:get/get.dart';
import 'package:credit_card_flutter/home_view.dart';
import 'package:credit_card_flutter/login_page.dart';

class AppRoutes {
  static const INITIAL = '/login';

  static final routes = [
    GetPage(name: '/login', page: () => const LoginPage()),
    GetPage(name: '/home', page: () => const HomeView()),
  ];
}
