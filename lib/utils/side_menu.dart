import 'package:ejercicios_flutter/screens/ejercicios/ejercicio9.dart';
import 'package:flutter/material.dart';
import 'package:ejercicios_flutter/screens/ejercicios/ejercicio1.dart';
import 'package:ejercicios_flutter/screens/ejercicios/ejercicio2.dart';
import 'package:ejercicios_flutter/screens/ejercicios/ejercicio3.dart';
import 'package:ejercicios_flutter/screens/ejercicios/ejercicio4.dart';
import 'package:ejercicios_flutter/screens/ejercicios/ejercicio5.dart';
import 'package:ejercicios_flutter/screens/ejercicios/ejercicio6.dart';
import 'package:ejercicios_flutter/screens/ejercicios/ejercicio7.dart';
import 'package:ejercicios_flutter/screens/ejercicios/ejercicio8.dart';
import 'package:url_launcher/url_launcher.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    const Color white = Color.fromARGB(255, 255, 255, 255);
    return Drawer(
      backgroundColor: white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Color.fromARGB(255, 187, 6, 200)),
            accountName: Align(
              alignment: Alignment.centerRight,
              child: Text(
                "Javier Tristán Chacón Domínguez",
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            accountEmail: Align(
              alignment: Alignment.centerRight,
              child: InkWell(
                child: const Text(
                  "Tr1stan21",
                  style: TextStyle(
                    fontSize: 15,
                    decoration: TextDecoration.underline,
                    decorationColor: white,
                  ),
                ),
                onTap: () async {
                  final Uri url = Uri.parse(
                    'https://github.com/Tr1stan21/FlutterProjects_JavierTristanChaconDominguez',
                  );
                  final messenger = ScaffoldMessenger.of(context);
                  // Intentar abrir en el navegador externo; si falla, mostrar un mensaje
                  final opened = await launchUrl(
                    url,
                    mode: LaunchMode.externalApplication,
                  );
                  if (!opened) {
                    messenger.showSnackBar(
                      const SnackBar(
                        content: Text('No se pudo abrir el enlace'),
                      ),
                    );
                  }
                },
              ),
            ),
          ),
          Ink(
            // Widget para aplicar color de fondo y efectos táctiles
            color: white,
            child: ListTile(
              title: const Text("Ejercicio 1"),
              onTap: () {
                Navigator.of(context).pop(); // Cierra el menú lateral
                Navigator.of(context).push(
                  // Navega a la nueva pantalla
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        const InfomacionPersonal(),
                  ),
                );
              },
            ),
          ),
          Ink(
            color: white,
            child: ListTile(
              title: const Text("Ejercicio 2"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => const TextoImagen(),
                  ),
                );
              },
            ),
          ),
          Ink(
            color: white,
            child: ListTile(
              title: const Text("Ejercicio 3"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        const TresFotosColumnas(),
                  ),
                );
              },
            ),
          ),
          Ink(
            color: white,
            child: ListTile(
              title: const Text("Ejercicio 4"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        const CincoImagenesFilas(),
                  ),
                );
              },
            ),
          ),
          Ink(
            color: white,
            child: ListTile(
              title: const Text("Ejercicio 5"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        const CincoImagenesColumnas(),
                  ),
                );
              },
            ),
          ),
          Ink(
            color: white,
            child: ListTile(
              title: const Text("Ejercicio 6"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => const DesbordadoTextos(),
                  ),
                );
              },
            ),
          ),
          Ink(
            color: white,
            child: ListTile(
              title: const Text("Ejercicio 7"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        const TresImagenesFilas(),
                  ),
                );
              },
            ),
          ),
          Ink(
            color: white,
            child: ListTile(
              title: const Text("Ejercicio 8"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        const FilasColumnasAnidadas(),
                  ),
                );
              },
            ),
          ),
          Ink(
            color: white,
            child: ListTile(
              title: const Text("Ejercicio 9"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        const DesafioHelipuerto(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
