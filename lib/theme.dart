import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  static Color bgAccent = Color(0xffE6CCB2);
  static Color bgColor = Color(0xff9C6644);
  static Color appBarColor = Color(0xffEDE0D4);
  static Color buttonColor = Color(0xffB08968);
  static Color textColor = Color(0xff7F5539);
}

ThemeData primaryTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: AppColors.bgColor),
  scaffoldBackgroundColor: AppColors.bgAccent,
  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.appBarColor,
    foregroundColor: AppColors.textColor,
    surfaceTintColor: Colors.transparent,
    centerTitle: true,
  ),
  textTheme: GoogleFonts.robotoSlabTextTheme(
    TextTheme(
      bodyMedium: TextStyle(
        color: AppColors.textColor,
        fontSize: 25,
        letterSpacing: 1,
        fontWeight: FontWeight.bold,
      ),
      headlineMedium: TextStyle(
        color: AppColors.textColor,
        fontSize: 30,
        fontWeight: FontWeight.bold,
        letterSpacing: 1,
      ),
      titleMedium: TextStyle(
        color: AppColors.textColor,
        fontSize: 20,
        fontWeight: FontWeight.bold,
        letterSpacing: 2,
      ),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: AppColors.textColor,
      backgroundColor: AppColors.buttonColor,
    ),
  ),
);
