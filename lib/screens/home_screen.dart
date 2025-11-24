import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ejercicios_flutter/screens/ejercicios/ejercicios.dart';
import 'package:ejercicios_flutter/utils/utils.dart';
import 'package:ejercicios_flutter/providers/theme_provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // lee el provider
    final themeProvider = context.watch<ThemeProvider>();

    return MaterialApp(
      theme: CustomTheme.build(themeProvider.isDarkMode),
      debugShowCheckedModeBanner: false,
      title: 'Ejercicios Flutter',
      home: Scaffold(
        appBar: CustomAppBar.build('Ejercicios Flutter', context),
        drawer: const SideMenu(),
      ),
      routes: {
        '/ej1': (context) => const InfomacionPersonal(),
        '/ej2': (context) => const TextoImagen(),
        '/ej3': (context) => const TresFotosColumnas(),
        '/ej4': (context) => const CincoImagenesFilas(),
        '/ej5': (context) => const CincoImagenesColumnas(),
        '/ej6': (context) => const DesbordadoTextos(),
        '/ej7': (context) => const TresImagenesFilas(),
        '/ej8': (context) => const FilasColumnasAnidadas(),
        '/ej9': (context) => const DesafioHelipuerto(),
        '/ej10': (context) => const ContadorClicks(),
        '/ej11': (context) => const InterfazInstagram(),
        '/ej12': (context) => const RandomColors(),
        '/ej13': (context) => const JuegoImagenes(),
      },
    );
  }
}
