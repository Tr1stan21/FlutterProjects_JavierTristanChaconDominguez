import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ejercicios_flutter/screens/ejercicios/ejercicios.dart';
import 'package:ejercicios_flutter/utils/utils.dart';
import 'package:ejercicios_flutter/providers/theme_provider.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

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
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LayoutBuilder(
                  builder: (context, constraints) {
                    final double cardWidth = constraints.maxWidth * 0.80;

                    return Center(
                      child: Container(
                        width: cardWidth,
                        height: cardWidth,

                        // CAPA 1 — Fondo con textura + gradiente más profundo
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(36),
                          gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xFF3A1A4C), // púrpura profundo
                              Color(0xFF15081E), // negro-púrpura
                            ],
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              blurRadius: 28,
                              spreadRadius: 2,
                              offset: const Offset(0, 14),
                            ),
                          ],
                          border: Border.all(color: kGoldAccent, width: 2),
                        ),

                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                color: kGoldAccent,
                                width: 3.2,
                              ),
                            ),
                            padding: const EdgeInsets.all(32),

                            child: Image.asset('assets/img/flutter_dorado.png'),
                          ),
                        ),
                      ),
                    );
                  },
                ),

                const SizedBox(height: 20),
                Text(
                  'Bienvenido a mi aplicación',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30),
                ),
                const SizedBox(height: 8),
                Text(
                  'En esta aplicación se recogen todas las tareas de Flutter',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
        ),
      ),
      routes: {
        '/splash': (context) => const SplashScreen(),
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
