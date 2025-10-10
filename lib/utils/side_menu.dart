import 'package:flutter/material.dart';
import 'package:ejercicios_flutter/screens/ejercicio1.dart';
import 'package:ejercicios_flutter/screens/ejercicio2.dart';
import 'package:url_launcher/url_launcher.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 41, 40, 43),
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Color.fromARGB(255, 41, 40, 43)),
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
                    decorationColor: Color.fromARGB(255, 255, 255, 255),
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
            color: const Color.fromARGB(255, 139, 191, 240),
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
            // Widget para aplicar color de fondo y efectos táctiles
            color: const Color.fromARGB(255, 139, 191, 240),
            child: ListTile(
              title: const Text("Ejercicio 2"),
              onTap: () {
                Navigator.of(context).pop(); // Cierra el menú lateral
                Navigator.of(context).push(
                  // Navega a la nueva pantalla
                  MaterialPageRoute(
                    builder: (BuildContext context) => const TextoImagen(),
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
