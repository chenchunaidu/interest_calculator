import 'package:flutter/material.dart';
import 'package:interest_calculator/components/common/hstack.dart';
import 'package:interest_calculator/components/translate-button.dart';
import 'package:interest_calculator/theme/inset.dart';

const translateButtonsData = [
  TranslateButton(locale: Locale('en', 'IN'), label: "English"),
  TranslateButton(locale: Locale('te', 'IN'), label: "తెలుగు"),
  TranslateButton(locale: Locale('hi', 'IN'), label: "हिंदी ")
];

class TranslateButtons extends StatelessWidget {
  const TranslateButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HStack(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: Insets.xl,
      children: translateButtonsData
          .map((e) => TranslateButton(locale: e.locale, label: e.label))
          .toList(),
    );
  }
}
