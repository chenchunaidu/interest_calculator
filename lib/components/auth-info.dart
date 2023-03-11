import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/components/common/vstack.dart';
import 'package:flutter_boilerplate/theme/font.dart';

class AuthInfo extends StatelessWidget {
  const AuthInfo({Key? key, this.label = '', this.subLabel = ''})
      : super(key: key);

  final String? label;
  final String? subLabel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: VStack(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          // "Welcome to\nFlutter boilerplate",
          label ?? "",
          style: TextStyles.h1,
        ),
        Text(
          subLabel ?? "",
          style: TextStyles.body1,
        )
      ]),
    );
  }
}
