import 'package:flutter/material.dart';
import 'package:interest_calculator/components/auth-info.dart';
import 'package:interest_calculator/components/login-form.dart';
import 'package:interest_calculator/components/common/vstack.dart';
import 'package:interest_calculator/theme/inset.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: const VStack(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
          VStack(
            spacing: Insets.xxl,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AuthInfo(
                label: "Welcome to\nFlutter boilerplate",
                subLabel:
                    "Sign in to Flutter boilerplate to check all features",
              ),
              LoginForm()
            ],
          )
        ]));
  }
}
