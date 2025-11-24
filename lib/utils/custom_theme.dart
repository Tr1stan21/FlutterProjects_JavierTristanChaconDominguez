import 'package:flutter/material.dart';

const Color kPrimaryPurple = Color(0xFF5A2676);
const Color kDarkBackground = Color(0xFF120718);
const Color kSurfacePurple = Color(0xFF1E0D2C);
const Color kGoldAccent = Color(0xFFD4AF37);
const Color kTextPrimary = Color(0xFFFDF7FF);
const Color kTextSecondary = Color(0xFFC7B4D9);

class CustomTheme {
  static ThemeData build() {
    return ThemeData(
      
    appBarTheme: const AppBarTheme(
      backgroundColor: kSurfacePurple,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: kGoldAccent,
      ),
      iconTheme: IconThemeData(
        color: kGoldAccent,
      ),
    ),

    drawerTheme: const DrawerThemeData(
      backgroundColor: kSurfacePurple,
    ),

    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        color: kTextPrimary,
        fontSize: 16,
      ),
      bodyMedium: TextStyle(
        color: kTextSecondary,
        fontSize: 14,
      ),
      titleLarge: TextStyle(
        color: kGoldAccent,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: kPrimaryPurple,
        foregroundColor: kTextPrimary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: const BorderSide(color: kGoldAccent, width: 1),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      ),
    ),

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: kPrimaryPurple,
      foregroundColor: kTextPrimary,
    ),
    );
  }
}
