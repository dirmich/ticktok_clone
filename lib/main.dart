import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:ticktok_clone/constants.dart';
import 'package:ticktok_clone/pages/auth/login.dart';
import 'package:ticktok_clone/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Tiktok clone',
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData.dark().copyWith(scaffoldBackgroundColor: backgroundColor),
      home: LoginPage(),
      getPages: Routes.routes,
    );
  }
}
