import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:ejercicios_flutter/utils/drawer_item.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    const gold = Color(0xFFD4AF37);
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color.fromARGB(255, 49, 25, 68), // morado profundo
                    Color(0xFF1A0B27), // más oscuro
                  ],
                ),
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 18,
                    offset: const Offset(0, 6),
                  ),
                ],
              ),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  // Tamaño responsive según ancho del drawer
                  double iconSize = constraints.maxWidth * 0.25;
                  iconSize = iconSize.clamp(
                    56.0,
                    96.0,
                  ); // límites mínimo/máximo

                  return Row(
                    children: [
                      Container(
                        width: iconSize,
                        height: iconSize,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              blurRadius: 14,
                              offset: const Offset(0, 6),
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/img/app_icon.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      const SizedBox(width: 5),

                      Expanded(
                        child: InkWell(
                          onTap: () async {
                            final Uri url = Uri.parse(
                              'https://github.com/Tr1stan21/FlutterProjects_JavierTristanChaconDominguez',
                            );
                            final messenger = ScaffoldMessenger.of(context);

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
                          child: const Text(
                            "Tr1stan21",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              decoration: TextDecoration.underline,
                              color: gold,
                            ),
                            textAlign: TextAlign.right,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  DrawerItem(1),
                  DrawerItem(2),
                  DrawerItem(3),
                  DrawerItem(4),
                  DrawerItem(5),
                  DrawerItem(6),
                  DrawerItem(7),
                  DrawerItem(8),
                  DrawerItem(9),
                  DrawerItem(10),
                  DrawerItem(11),
                  DrawerItem(12),
                  DrawerItem(13),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
