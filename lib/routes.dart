import 'package:get/route_manager.dart';
import 'package:ticktok_clone/pages/auth/login.dart';
import 'package:ticktok_clone/pages/auth/signup.dart';

class Routes {
  static final routes = [
    GetPage(name: '/login', page: () => LoginPage()),
    GetPage(name: '/register', page: () => SignupPage()),
  ];
}
