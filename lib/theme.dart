import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  static Color bgAccent = Color.fromARGB(255, 223, 206, 228);
  static Color bgColor = Color.fromARGB(255, 198, 173, 206);
  static Color appBarColor = Color.fromRGBO(216, 216, 216, 1);
  static Color easyColor = Color.fromARGB(255, 2, 194, 162);
  static Color easyAccent = Color.fromARGB(255, 2, 255, 213);
  static Color normalColor = Color.fromARGB(255, 0, 132, 255);
  static Color normalAccent = Color.fromARGB(255, 106, 183, 255);
  static Color hardColor = Color.fromARGB(255, 139, 6, 6);
  static Color hardAccent = Color.fromARGB(255, 255, 63, 63);
  static Color textColor = Color.fromARGB(255, 0, 0, 0);
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
        fontSize: 16,
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
);
