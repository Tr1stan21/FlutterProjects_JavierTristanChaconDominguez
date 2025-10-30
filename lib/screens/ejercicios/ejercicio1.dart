import 'package:ejercicios_flutter/utils/side_menu.dart';
import 'package:ejercicios_flutter/utils/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';

class InfomacionPersonal extends StatelessWidget {
  const InfomacionPersonal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.build('Información Personal'),
      drawer: const SideMenu(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Javier Tristán Chacón Domínguez',
              style: GoogleFonts.oswald(
                textStyle: const TextStyle(fontSize: 24),
              ),
            ),
            InkWell(
              child: Text(
                "Repositorio de GitHub",
                style: GoogleFonts.titilliumWeb(
                  textStyle: const TextStyle(
                    color: Color.fromARGB(255, 0, 0, 255),
                    decoration: TextDecoration.underline,
                    decorationColor: Color.fromARGB(255, 0, 0, 255),
                    fontSize: 20,
                  ),
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
                    const SnackBar(content: Text('No se pudo abrir el enlace')),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
