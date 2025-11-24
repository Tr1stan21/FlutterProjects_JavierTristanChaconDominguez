import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ejercicios_flutter/providers/theme_provider.dart';
import 'colors.dart';

class CustomAppBar {
  static AppBar build(String title, BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();
    final bool isDark = themeProvider.isDarkMode;

    return AppBar(
      title: Text(title),
      centerTitle: true,
      actions: [
        Switch(
          value: isDark,
          onChanged: (value) => themeProvider.setDarkMode(value),
          activeTrackColor: kPrimaryPurple,
          inactiveTrackColor: kLightSurface,
          thumbColor: WidgetStateProperty.resolveWith<Color>((states) {
            return isDark ? kGoldAccent : kPrimaryPurple;
          }),
          thumbIcon: WidgetStateProperty.all(
            isDark
                ? const Icon(Icons.dark_mode, size: 18, color: kPrimaryPurple)
                : const Icon(Icons.light_mode, size: 18, color: kGoldAccent),
          ),
        ),
        const SizedBox(width: 12),
      ],
    );
  }
}
