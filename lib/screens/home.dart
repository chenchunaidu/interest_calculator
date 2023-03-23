import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interest_calculator/components/common/vstack.dart';
import 'package:interest_calculator/components/interest-form.dart';

import '../components/translate-buttons.dart';

class HomeTileModel {
  final String label;
  final String path;

  HomeTileModel({required this.label, required this.path});
}

var tabs = [
  HomeTileModel(label: "Expenses \n&Savings".tr, path: "/expenses-and-savings"),
  HomeTileModel(label: "Interest\nCalculator".tr, path: "/interest-calculator"),
  HomeTileModel(label: "Tax\nCalculator".tr, path: "/tax-calculator")
];

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemCount: tabs.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          child: Text(tabs[index].label),
          onTap: () {
            Get.toNamed(tabs[index].path);
          },
        );
      },
    );
  }
}
