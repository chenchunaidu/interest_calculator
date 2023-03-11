import 'package:flutter/material.dart';
import 'package:interest_calculator/theme/color.dart';
import 'package:interest_calculator/theme/input.dart';

ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: brand,
    inputDecorationTheme: darkInputDecorationTheme,
    checkboxTheme: CheckboxThemeData(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      fillColor:
          MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
        if (states.contains(MaterialState.selected)) {
          return brand;
        }
        return Colors.grey;
      }),
    ));

ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primarySwatch: brand,
    inputDecorationTheme: darkInputDecorationTheme);
