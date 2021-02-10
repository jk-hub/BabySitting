import 'package:babySitting/core/size_config.dart';
import 'package:flutter/material.dart';

class AppTextStyle {
  static TextStyle getRegularTextStyle(double size,
      {Color color, FontWeight weight}) {
    return TextStyle(
      color: color ?? Colors.black,
      fontWeight: weight ?? regular,
      fontFamily: "Poppins",
      fontSize: size,
    );
  }
}

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;

final kTextFieldDecoration = InputDecoration(
  enabledBorder: OutlineInputBorder(
    borderSide: const BorderSide(
      color: Colors.black38,
    ),
    borderRadius: BorderRadius.circular(1.66 * SizeConfig.widthMultiplier),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: const BorderSide(
      color: Colors.black38,
    ),
    borderRadius: BorderRadius.circular(1.66 * SizeConfig.widthMultiplier),
  ),
  isDense: true,
);
