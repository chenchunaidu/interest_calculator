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
    return InterestPreviewModel(
        timePeriod: getTimePeriod(),
        totalAmount: getSimpleTotalValue(),
        principleAmount: principleAmount.toString(),
        interestRate: interestRate.toString());
  }

  InterestPreviewModel getCompoundInterestPreview() {
    return InterestPreviewModel(
        timePeriod: getTimePeriod(),
        totalAmount: getCompoundTotalValue(),
        principleAmount: principleAmount.toString(),
        interestRate: interestRate.toString());
  }
}
