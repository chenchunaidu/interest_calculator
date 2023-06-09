import 'package:flutter/material.dart';

const Map<int, Color> skySwatch = {
  50: Color.fromRGBO(240, 249, 255, 1),
  100: Color.fromRGBO(224, 242, 254, 1),
  200: Color.fromRGBO(186, 230, 253, 1),
  300: Color.fromRGBO(125, 211, 252, 1),
  400: Color.fromRGBO(56, 189, 248, 1),
  500: Color.fromRGBO(14, 165, 233, 1),
  600: Color.fromRGBO(2, 132, 199, 1),
  700: Color.fromRGBO(3, 105, 161, 1),
  800: Color.fromRGBO(7, 89, 133, 1),
  900: Color.fromRGBO(12, 74, 110, 1)
};

MaterialColor sky = new MaterialColor(0xFF0EA5E9, skySwatch);

const Map<int, Color> redSwatch = {
  50: Color.fromRGBO(254, 242, 242, 1),
  100: Color.fromRGBO(254, 226, 226, 1),
  200: Color.fromRGBO(254, 202, 202, 1),
  300: Color.fromRGBO(252, 165, 165, 1),
  400: Color.fromRGBO(248, 113, 113, 1),
  500: Color.fromRGBO(239, 68, 68, 1),
  600: Color.fromRGBO(220, 38, 38, 1),
  700: Color.fromRGBO(185, 28, 28, 1),
  800: Color.fromRGBO(153, 27, 27, 1),
  900: Color.fromRGBO(127, 29, 29, 1)
};

MaterialColor red = new MaterialColor(0xFFEF4444, redSwatch);

const Map<int, Color> greenSwatch = {
  50: Color.fromRGBO(240, 253, 244, 1),
  100: Color.fromRGBO(220, 252, 231, 1),
  200: Color.fromRGBO(187, 247, 208, 1),
  300: Color.fromRGBO(134, 239, 172, 1),
  400: Color.fromRGBO(74, 222, 128, 1),
  500: Color.fromRGBO(34, 197, 94, 1),
  600: Color.fromRGBO(22, 163, 74, 1),
  700: Color.fromRGBO(21, 128, 61, 1),
  800: Color.fromRGBO(22, 101, 52, 1),
  900: Color.fromRGBO(20, 83, 45, 1)
};

MaterialColor green = new MaterialColor(0xFF4ADE80, greenSwatch);

//TODO: make it runtime
MaterialColor brand = green;
