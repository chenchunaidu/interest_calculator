import 'package:flutter/material.dart';
import 'package:interest_calculator/helpers/translations.dart';
import 'package:interest_calculator/layout/get-page-wrapper.dart';
import 'package:interest_calculator/screens/home.dart';
import 'package:interest_calculator/screens/interest-calculator.dart';
import 'package:interest_calculator/theme/index.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  GetStorage storage = GetStorage();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: Locale(storage.read("locale-language") ?? 'en',
          storage.read("locale-country") ?? 'IN'),
      translations: Messages(),
      initialRoute: '/home',
      getPages: getPageWrapper([
        PageWrapper(path: '/home', child: const Home(), navbar: false),
        PageWrapper(
            path: '/interest-calculator',
            child: const InterestCalculator(),
            navbar: false),
      ]),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      darkTheme: darkTheme,
    );
  }
}
