import 'package:flutter/material.dart';
import 'colors.dart';

class CustomTheme {
  static ThemeData build(bool isDark) {
    // TEMA OSCURO
    if (isDark) {
      return ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: kSurfacePurple,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: kGoldAccent,
          ),
          iconTheme: IconThemeData(color: kGoldAccent),
        ),
        drawerTheme: const DrawerThemeData(backgroundColor: kSurfacePurple),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: kTextPrimary, fontSize: 16),
          bodyMedium: TextStyle(color: kTextSecondary, fontSize: 14),
          titleLarge: TextStyle(
            color: kGoldAccent,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        scaffoldBackgroundColor: kDarkBackground,
        iconTheme: const IconThemeData(color: kTextPrimary),
      );
    }

    // TEMA CLARO
    return ThemeData(
      appBarTheme: const AppBarTheme(
        backgroundColor: kLightSurface,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: kGoldAccent,
        ),
        iconTheme: IconThemeData(color: kLightIconColor),
      ),

      drawerTheme: const DrawerThemeData(backgroundColor: kLightSurface),

      textTheme: const TextTheme(
        bodyLarge: TextStyle(color: kLightTextPrimary, fontSize: 16),
        bodyMedium: TextStyle(color: kLightTextSecondary, fontSize: 14),
        titleLarge: TextStyle(
          color: kPrimaryPurple,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),

      scaffoldBackgroundColor: kLightBackground,
      iconTheme: const IconThemeData(color: kLightIconColor),
    );
  }
}
