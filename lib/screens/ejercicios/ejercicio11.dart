import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:ejercicios_flutter/utils/utils.dart';

class InterfazInstagram extends StatelessWidget {
  const InterfazInstagram({super.key});

  static final List<String> imagenes = [
    'https://www.fundacionaquae.org/wp-content/uploads/2018/10/proteger-a-los-animales.jpg',
    'https://www.telemundo.com/sites/nbcutelemundo/files/styles/fit-560w/public/images/article/cover/2018/04/19/tigre-caminando.jpg?ramen_itok=iqwQftIcTf',
    'https://static.nationalgeographicla.com/files/styles/image_3200/public/nationalgeographic_2791022.webp?w=1600&h=900&p=righttop',
    'https://muyinteresante.okdiario.com/wp-content/uploads/sites/5/2023/12/28/658d3cc8a1698.jpeg',
    'https://safariafricano.es/wp-content/uploads/sites/8/2024/03/Masai-Mara-lion-1024x683.jpg',
    'https://images.pexels.com/photos/47547/squirrel-animal-cute-rodents-47547.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://www.americanbible.org/wp-content/uploads/2024/08/animals_herocore-1200x600-c-default.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQS6ZF39yxraQmlIzaT9opB9AkwH8YmjNK8wuZv4o7pNfeD_yzSwOZubVBFUCF02aS68ZH7Q2r6iJKSZgooevQXS9xDXhTF31qpB2decQ&s=10',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.build('Interfaz Instagram', context),
      drawer: const SideMenu(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 3),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(children: [Icon(Icons.arrow_back)]),
                  Column(
                    children: [
                      Text(
                        'javiichd_24',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  Column(children: [Icon(Icons.more_horiz)]),
                ],
              ),
            ),
            SizedBox(height: 3),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
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
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text('Posts'),
                    ],
                  ),
                  Column(
                    children: const [
                      Text(
                        '8.2 M',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text('Followers'),
                    ],
                  ),
                  Column(
                    children: const [
                      Text(
                        '1,754',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text('Following'),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [Text("Javier Tristán Chacón Domínguez")]),
                      Row(children: [Text("Marbella/Málaga")]),
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
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
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
                        style: TextStyle(fontSize: 12.5, ),
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
                        style: TextStyle(fontSize: 12.5,),
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
                        style: TextStyle(fontSize: 12.5,),
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
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 40, // tamaño (reducido)
                        backgroundImage: NetworkImage(
                          'https://cdn-icons-png.flaticon.com/512/6993/6993637.png',
                        ),
                      ),
                      Text("Gym"),
                    ],
                  ),
                  SizedBox(width: 15),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 40, // tamaño (reducido)
                        backgroundImage: NetworkImage(
                          'https://www.intelligenthq.com/wp-content/uploads/2020/09/How-Tech-is-Changing-the-Way-we-Work.jpg',
                        ),
                      ),
                      Text("Tech"),
                    ],
                  ),
                  SizedBox(width: 15),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 40, // tamaño (reducido)
                        backgroundImage: NetworkImage(
                          'https://img.static-af.com/transform/e56219e9-21c7-4bb0-b7a5-f5353a5140d3/',
                        ),
                      ),
                      Text("Viajes"),
                    ],
                  ),
                  SizedBox(width: 15),
                ],
              ),
            ),
            const SizedBox(height: 5),
            Divider(
              color: const Color.fromARGB(255, 222, 217, 217),
              thickness: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.grid_on, size: 28),
                Icon(Icons.movie_creation_outlined, size: 28),
                Icon(Icons.shopping_bag_outlined, size: 28),
                Icon(Icons.person_pin_outlined, size: 28),
              ],
            ),
            const SizedBox(height: 7),
            GridView.count(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 3,
              crossAxisSpacing: 1,
              mainAxisSpacing: 1,
              children: List.generate(imagenes.length, (i) {
                return Image.network(imagenes[i], fit: BoxFit.cover);
              }),
            ),
          ],
        ),
      ),
    );
  }
}
