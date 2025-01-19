import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  AppTextStyles._();

  static final _baseStyle = GoogleFonts.inter();
  static final _baseSpaceMonoStyle = GoogleFonts.spaceMono();

  static final bigHeading = _baseStyle.copyWith(
    fontSize: 35,
    fontWeight: FontWeight.w400,
  );

  static final heading = _baseStyle.copyWith(
    fontSize: 30,
    fontWeight: FontWeight.w200,
  );

  static final buttonText = _baseStyle.copyWith(
    fontSize: 20,
    fontWeight: FontWeight.w400,
  );

  static final orText = _baseStyle.copyWith(
    fontSize: 20,
    fontWeight: FontWeight.w300,
  );

  static final bodyText = _baseStyle.copyWith(
    fontSize: 14,
    color: Colors.black,
  );

  static final linkText = bodyText.copyWith(
    decoration: TextDecoration.underline,
  );

  static TextStyle cardTitle({required bool isSelected}) =>
      _baseSpaceMonoStyle.copyWith(
        fontSize: 15,
        fontWeight: FontWeight.bold,
        color: isSelected ? Colors.white : Colors.black,
      );

  static TextStyle cardSubtitle({required bool isSelected}) =>
      _baseSpaceMonoStyle.copyWith(
        fontSize: 12,
        fontWeight: FontWeight.w300,
        color: isSelected ? Colors.white : Colors.black,
      );
}
