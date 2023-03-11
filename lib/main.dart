import 'package:flutter/material.dart';
import 'package:interest_calculator/layout/get-page-wrapper.dart';
import 'package:interest_calculator/screens/account.dart';
import 'package:interest_calculator/screens/calendar.dart';
import 'package:interest_calculator/screens/content.dart';
import 'package:interest_calculator/screens/home.dart';
import 'package:interest_calculator/screens/login.dart';
import 'package:interest_calculator/screens/otp.dart';
import 'package:interest_calculator/theme/index.dart';
import 'package:get/get.dart';
import 'package:interest_calculator/helpers/auth.dart';

void initialize() {
  // inject authentication controller
  Get.put(AuthController());
}

void main() {
  initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/login',
      getPages: getPageWrapper([
        PageWrapper(path: '/login', child: Login(), navbar: false),
        PageWrapper(path: '/home', child: const Home()),
        PageWrapper(path: '/content', child: const Content()),
        PageWrapper(path: '/calendar', child: const Calendar()),
        PageWrapper(path: '/profile', child: const Account()),
        PageWrapper(path: "/otp", child: const OTP(), navbar: false)
      ]),
      routingCallback: routingCallback,
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      darkTheme: darkTheme,
      home: Home(),
    );
  }
}
