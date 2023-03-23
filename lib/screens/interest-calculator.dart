import 'package:flutter/material.dart';
import 'package:interest_calculator/components/common/vstack.dart';
import 'package:interest_calculator/components/interest-form.dart';

import '../components/translate-buttons.dart';

class InterestCalculator extends StatelessWidget {
  const InterestCalculator({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
        child: VStack(spacing: 0.0, children: [
      InterestForm(),
      TranslateButtons(),
    ]));
  }
}
