import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ejercicios_flutter/screens/splash_screen.dart';
import 'package:ejercicios_flutter/providers/theme_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const SplashScreen(),
    ),
  );
}
