import 'package:flutter/material.dart';
import 'package:interest_calculator/helpers/translations.dart';
import 'package:interest_calculator/layout/get-page-wrapper.dart';
import 'package:interest_calculator/screens/home.dart';
import 'package:interest_calculator/theme/index.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: Locale('en', 'IN'),
      translations: Messages(),
      initialRoute: '/home',
      getPages: getPageWrapper([
        PageWrapper(path: '/home', child: const Home(), navbar: false),
      ]),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      darkTheme: darkTheme,
    );
  }
}
