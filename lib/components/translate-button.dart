import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TranslateButton extends StatelessWidget {
  const TranslateButton({Key? key, required this.locale, required this.label})
      : super(key: key);

  final Locale locale;
  final String label;
  onClick() {
    Get.updateLocale(locale);
  }

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onClick,
      child: Text(label),
    );
  }
}
