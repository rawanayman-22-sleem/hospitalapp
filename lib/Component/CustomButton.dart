


import 'package:flutter/material.dart';

import '../Constant/color.dart';

class CustomButton extends StatelessWidget {
  Color buttonColor;
  VoidCallback? onPressed;

  CustomButton(
      {this.buttonColor = red,
        this.onPressed,
        this.borderRadius = 10,
        required this.widget});

  double borderRadius;
  Widget widget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: ElevatedButton(
        child: widget,
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          elevation: 0,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius)), ),
        onPressed: onPressed,
      ),
    );
  }
}