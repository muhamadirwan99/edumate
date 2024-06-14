import 'package:edumate/core.dart';
import 'package:flutter/material.dart';

ThemeData themeData = ThemeData(
  useMaterial3: false,
).copyWith(
  primaryColor: primaryColor,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.white,
    elevation: 3,
    titleTextStyle: GoogleFonts.montserrat(
      color: primaryColor,
      fontSize: 16,
      fontWeight: FontWeight.w800,
    ),
    iconTheme: IconThemeData(
      color: primaryColor,
    ),
  ),
);

Color primaryColor = const Color(0xff0C356A);
