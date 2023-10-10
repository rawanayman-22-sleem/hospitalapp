

import 'package:flutter/material.dart';

import '../Const/color.dart';
import 'CustomText.dart';

class CustomMaxColorText extends StatelessWidget {
  final String rName, wName;

  CustomMaxColorText({
    required this.rName,
    required this.wName,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomText(
          text: '$rName',
          fontSize: 33,
          color: Colors.black,
          fontWeight: FontWeight.w800,
        ),
        CustomText(
          text: '$wName',
          fontSize: 33,
          color: red,
          fontWeight: FontWeight.w800,
        )
      ],
    );
  }
}