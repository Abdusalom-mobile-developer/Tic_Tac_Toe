import 'package:flutter/material.dart';
import 'package:flutter_practice32_hw3/config/colors.dart';

mixin CustomWidgets {
  Widget customText({required String textContent}) {
    return Text(
      textContent,
      style: TextStyle(
          fontSize: 25, color: CustomColors.white, fontWeight: FontWeight.w500),
    );
  }
}




