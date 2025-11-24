import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ejercicios_flutter/screens/home_screen.dart'; // donde está MyApp
import 'package:ejercicios_flutter/providers/theme_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}
