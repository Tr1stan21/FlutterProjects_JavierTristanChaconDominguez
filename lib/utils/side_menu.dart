import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    const Color white = Color.fromARGB(255, 255, 255, 255);
    return Drawer(
      backgroundColor: white,
      child: SafeArea(
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
                    Navigator.pop(context);
                    Navigator.pushReplacementNamed(context, '/ej1');
                  },
                ),
              ),
              Ink(
                color: white,
                child: ListTile(
                  title: const Text("Ejercicio 2"),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushReplacementNamed(context, '/ej2');
                  },
                ),
              ),
              Ink(
                color: white,
                child: ListTile(
                  title: const Text("Ejercicio 3"),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushReplacementNamed(context, '/ej3');
                  },
                ),
              ),
              Ink(
                color: white,
                child: ListTile(
                  title: const Text("Ejercicio 4"),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushReplacementNamed(context, '/ej4');
                  },
                ),
              ),
              Ink(
                color: white,
                child: ListTile(
                  title: const Text("Ejercicio 5"),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushReplacementNamed(context, '/ej5');
                  },
                ),
              ),
              Ink(
                color: white,
                child: ListTile(
                  title: const Text("Ejercicio 6"),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushReplacementNamed(context, '/ej6');
                  },
                ),
              ),
              Ink(
                color: white,
                child: ListTile(
                  title: const Text("Ejercicio 7"),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushReplacementNamed(context, '/ej7');
                  },
                ),
              ),
              Ink(
                color: white,
                child: ListTile(
                  title: const Text("Ejercicio 8"),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushReplacementNamed(context, '/ej8');
                  },
                ),
              ),
              Ink(
                color: white,
                child: ListTile(
                  title: const Text("Ejercicio 9"),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushReplacementNamed(context, '/ej9');
                  },
                ),
              ),
              Ink(
                color: white,
                child: ListTile(
                  title: const Text("Ejercicio 10"),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushReplacementNamed(context, '/ej10');
                  },
                ),
              ),
              Ink(
                color: white,
                child: ListTile(
                  title: const Text("Ejercicio 11"),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushReplacementNamed(context, '/ej11');
                  },
                ),
              ),
              Ink(
                color: white,
                child: ListTile(
                  title: const Text("Ejercicio 12"),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushReplacementNamed(context, '/ej12');
                  },
                ),
              ),
              Ink(
                color: white,
                child: ListTile(
                  title: const Text("Ejercicio 13"),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushReplacementNamed(context, '/ej13');
                  },
                ),
              ),
            ],
          ),
      ),
    );
  }
}
