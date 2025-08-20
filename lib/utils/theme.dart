import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constants.dart';

ThemeData appTheme() {
  return ThemeData(
    scaffoldBackgroundColor: kBackgroundColor,
    primaryColor: kPrimaryColor,
    textTheme: GoogleFonts.poppinsTextTheme().apply(
      bodyColor: kTextColor,
      displayColor: kTextColor,
    ),
    cardTheme: const CardThemeData(
      color: kSurfaceColor,
      elevation: 4,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: kBackgroundColor,
      elevation: 0,
    ),
    colorScheme: const ColorScheme.dark(
      primary: kPrimaryColor,
      secondary: kPrimaryColor,
      background: kBackgroundColor,
      surface: kSurfaceColor,
    ),
  );
}