import 'package:flutter/material.dart';
import 'package:ejercicios_flutter/screens/ejercicios/ejercicio16/pantalla2.dart';
import 'package:ejercicios_flutter/utils/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class Pantalla1 extends StatefulWidget {
  const Pantalla1({super.key});

  @override
  State<Pantalla1> createState() => _Pantalla1State();
}

class _Pantalla1State extends State<Pantalla1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.build('Juego de Colores', context),
      drawer: const SideMenu(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Javier Tristán Chacón Domínguez',
            style: GoogleFonts.fuggles(fontSize: 25),
          ),
          Image.network(
            'https://www.aespac.org/wp-content/uploads/2021/01/Carpintero.jpg',
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Pantalla2()),
              );
            },
            child: Text('Pantalla 2'),
          ),
        ],
      ),
    );
  }
}
