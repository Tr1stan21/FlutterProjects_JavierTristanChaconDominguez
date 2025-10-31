import 'package:ejercicios_flutter/utils/side_menu.dart';
import 'package:ejercicios_flutter/utils/custom_app_bar.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

class InterfazInstagram extends StatelessWidget {
  const InterfazInstagram({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.build('Interfaz Instagram'),
      drawer: const SideMenu(),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(children: [Icon(Icons.arrow_back)]),
              Column(children: [Text('javiichd_24')]),
              Column(children: [Icon(Icons.more_horiz)]),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  CircleAvatar(
                    radius: 50, // tamaño
                    backgroundImage: AssetImage(
                      'assets/img/PerfilInstagram.jpg',
                    ),
                  ),
                ],
              ),
              Column(
                children: const [
                  Text(
                    '7,850',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text('Posts'),
                ],
              ),
              Column(
                children: const [
                  Text(
                    '8.2 M',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text('Followers'),
                ],
              ),
              Column(
                children: const [
                  Text(
                    '1,754',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text('Following'),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [Text("Javier Tristán Chacón Domínguez"),],),
                  Row(children: [Text("Marbella/Málaga"),],),
                  Row(
                    children: [
                      Text(
                        "Técnico en Desarrollo de Aplicaciones Multiplataforma",
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      InkWell(
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
                        child: const Text(
                          "Repositorio de GitHub",
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 255),
                            decoration: TextDecoration.underline,
                            decorationColor: Color.fromARGB(255, 0, 0, 255),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: () {}, // sin funcionamiento
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      vertical: 6,
                      horizontal: 12,
                    ),
                    minimumSize: const Size(0, 0),

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  child: const Text(
                    'Following',
                    style: TextStyle(fontSize: 12.5, color: Colors.black),
                  ),
                ),
              ),
              const SizedBox(width: 6),
              Expanded(
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      vertical: 6,
                      horizontal: 12,
                    ),
                    minimumSize: const Size(0, 0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  child: const Text(
                    'Message',
                    style: TextStyle(fontSize: 12.5, color: Colors.black),
                  ),
                ),
              ),
              const SizedBox(width: 6),
              Expanded(
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      vertical: 6,
                      horizontal: 12,
                    ),
                    minimumSize: const Size(0, 0),

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  child: const Text(
                    'Email',
                    style: TextStyle(fontSize: 12.5, color: Colors.black),
                  ),
                ),
              ),
              const SizedBox(width: 6),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    vertical: 6,
                    horizontal: 12,
                  ),
                  minimumSize: const Size(0, 0),

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                child: const Icon(
                  Icons.arrow_drop_down,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ],
          ),
          Row(),
          Row(),
          Row(),
        ],
      ),
    );
  }
}
