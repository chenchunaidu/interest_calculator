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
  HomeTileModel(label: "Interest\nCalculator", path: "/interest-calculator")
];

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: VStack(
            spacing: 0.0,
            children: tabs
                .map((e) => GestureDetector(
                      child: Text(e.label),
                      onTap: () {
                        Get.toNamed(e.path);
                      },
                    ))
                .toList()));
  }
}
