import 'dart:ffi';

import 'package:interest_calculator/components/interest-preview-model.dart';
import 'dart:math';

class InterestModel {
  final String startDate;
  final String endDate;
  final int principleAmount;
  final int interestRate;
  InterestModel(
      {required this.startDate,
      required this.endDate,
      required this.principleAmount,
      required this.interestRate});

  factory InterestModel.fromJson(Map<String, dynamic> json) => InterestModel(
        startDate: json["startDate"] as String,
        endDate: json["endDate"] as String,
        principleAmount: int.parse(json["principleAmount"]),
        interestRate: int.parse(json["interestRate"]),
      );

  int getDiffInDays() {
    var startDate = DateTime.parse(this.startDate);
    var endDate = DateTime.parse(this.endDate);
    return endDate.difference(startDate).inDays;
  }

  String getTimePeriod() {
    return "${getDiffInDays()} days";
  }

  String formattedDiff() {
    var startDate = DateTime.parse(this.startDate);
    var endDate = DateTime.parse(this.endDate);
    var monthAddValue = 0;
    var yearAddValue = 0;
    var diffDate = endDate.day - startDate.day;

    if (endDate.day < startDate.day) {
      DateTime now = DateTime.now();
      int lastday = DateTime(now.year, now.month + 1, 0).day;
      diffDate = lastday - startDate.day + endDate.day;
      monthAddValue = -1;
    }
    var diffMonth = endDate.month - startDate.month;
    if (endDate.month < startDate.month) {
      diffMonth = 12 + endDate.month - startDate.month;
      yearAddValue = -1;
    }
    var diffYear = endDate.year - startDate.year;
    var diffString = "";
    if (diffYear + yearAddValue > 0) {
      diffString += "${diffYear + yearAddValue} Year";
      if (diffYear + yearAddValue > 1) {
        diffString += "s ";
      } else {
        diffString += " ";
      }
    }
    if (monthAddValue + diffMonth > 0) {
      diffString += "${diffMonth + monthAddValue} Month";
      if (monthAddValue + diffMonth > 1) {
        diffString += "s ";
      } else {
        diffString += " ";
      }
    }
    if (diffDate > 0) {
      diffString += "$diffDate day";
      if (diffDate > 1) {
        diffString += "s ";
      } else {
        diffString += " ";
      }
    }
    return diffString;
  }

  String getSimpleTotalValue() {
    return ((principleAmount *
            (1 + ((interestRate * getDiffInDays()) / 36500))))
        .toStringAsFixed(2);
  }

  String getCompoundTotalValue() {
    return ((principleAmount *
            pow(((interestRate / 100) + 1), (getDiffInDays() / 365))
                .toDouble()))
        .toStringAsFixed(2);
  }

  InterestPreviewModel getSimpleInterestPreview() {
    formattedDiff();
    return InterestPreviewModel(
        timePeriod: formattedDiff(),
        totalAmount: getSimpleTotalValue(),
        principleAmount: principleAmount.toString(),
        interestRate: interestRate.toString());
  }

  InterestPreviewModel getCompoundInterestPreview() {
    return InterestPreviewModel(
        timePeriod: formattedDiff(),
        totalAmount: getCompoundTotalValue(),
        principleAmount: principleAmount.toString(),
        interestRate: interestRate.toString());
  }
}
