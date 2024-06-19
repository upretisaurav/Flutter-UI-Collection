import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var myTheme = ThemeData(
  scaffoldBackgroundColor: const Color(0xffEEEEEE),
  appBarTheme: const AppBarTheme(
    color: Color(0xffEEEEEE),
    surfaceTintColor: Color(0xffEEEEEE),
    elevation: 0,
  ),
  textTheme: GoogleFonts.poppinsTextTheme(),
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color(0xffEEEEEE),
  ),
);
