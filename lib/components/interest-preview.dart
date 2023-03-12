import 'package:flutter/material.dart';
import 'package:interest_calculator/components/common/vstack.dart';
import 'package:interest_calculator/components/interest-preview-line-item.dart';
import 'package:interest_calculator/components/interest-preview-model.dart';
import 'package:interest_calculator/theme/color.dart';
import 'package:interest_calculator/theme/font.dart';
import 'package:interest_calculator/theme/inset.dart';

class InterestPreview extends StatelessWidget {
  const InterestPreview(
      {Key? key, required this.label, required this.interestPreviewData})
      : super(key: key);
  final InterestPreviewModel interestPreviewData;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Insets.md),
        color: Colors.grey.shade900,
      ),
      width: double.infinity,
      padding: const EdgeInsets.all(Insets.xl),
      child: VStack(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          label,
          style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 16, color: brand),
        ),
        InterestPreviewLineItem(
            label: "Principal amount",
            value: interestPreviewData.principleAmount),
        InterestPreviewLineItem(
            label: "Interest", value: interestPreviewData.interestRate),
        InterestPreviewLineItem(
            label: "Time period", value: interestPreviewData.timePeriod),
        const Divider(),
        InterestPreviewLineItem(
            label: "Total amount", value: interestPreviewData.totalAmount),
      ]),
    );
  }
}
