import 'package:flutter/material.dart';
import 'package:interest_calculator/components/common/vstack.dart';
import 'package:interest_calculator/components/interest-model.dart';
import 'package:interest_calculator/components/interest-preview.dart';
import 'package:interest_calculator/theme/color.dart';
import 'package:interest_calculator/theme/inset.dart';

import '../theme/font.dart';
import 'common/form/custom-form-field.dart';
import 'common/form/index.dart';

var calendarForm = [
  {
    "type": FormFieldType.date,
    "name": "startDate",
    "placeholder": "Start Date",
  },
  {
    "type": FormFieldType.date,
    "name": "endDate",
    "placeholder": "End Date",
  },
  {
    "type": FormFieldType.row,
    "fields": [
      {
        "type": FormFieldType.text,
        "name": "principleAmount",
        "placeholder": "Principle",
        "helperText": "Initial Amount"
      },
      {
        "type": FormFieldType.text,
        "name": "interestRate",
        "placeholder": "Annual Interest rate",
        "helperText": "Monthly interest rate x 12"
      },
    ]
  },
];

class InterestForm extends StatefulWidget {
  const InterestForm({Key? key}) : super(key: key);

  @override
  _InterestFormState createState() => _InterestFormState();
}

class _InterestFormState extends State<InterestForm> {
  InterestModel? interestData;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(Insets.lg),
            child: VStack(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: Insets.xl,
                children: [
                  const Text(
                    "🤑 Interest Calculator",
                    style: TextStyles.h3,
                  ),
                  CustomForm(
                    fields: calendarForm,
                    spacing: Insets.lg,
                    submitButtonChild: const Text(
                      "Calculate",
                      style: TextStyles.buttonText1,
                    ),
                    onSubmit: (value) {
                      setState(() {
                        interestData = InterestModel.fromJson(value);
                      });
                    },
                  ),
                  interestData != null
                      ? VStack(children: [
                          InterestPreview(
                            label: "Simple",
                            interestPreviewData:
                                interestData!.getSimpleInterestPreview(),
                          ),
                          InterestPreview(
                            label: "Compound",
                            interestPreviewData:
                                interestData!.getCompoundInterestPreview(),
                          )
                        ])
                      : Container()
                ])));
  }
}
