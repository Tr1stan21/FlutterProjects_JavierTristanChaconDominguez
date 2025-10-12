import 'package:ejercicios_flutter/utils/side_menu.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

class DesbordadoTextos extends StatelessWidget {
  const DesbordadoTextos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Desbordamiento de textos')),
      drawer: const SideMenu(),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          //Texto con overflow ellipsis
          Text(
            "En un lugar de La Mancha, de cuyo nombre no quiero acordarme, "
            "no hace mucho tiempo que vivía un hidalgo de los de lanza en astillero, "
            "adarga antigua, rocín flaco y galgo corredor. Una olla de algo más vaca que carnero, "
            "salpicón las más noches, duelos y quebrantos los sábados, lentejas los viernes, "
            "algún palomino de añadidura los domingos, consumían las tres partes de su hacienda.",
            style: GoogleFonts.titilliumWeb(),
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
          ),

          const Padding(padding: EdgeInsets.only(top: 20)),

          // Texto con overflow fade
          Text(
            "En un lugar de La Mancha, de cuyo nombre no quiero acordarme, "
            "no hace mucho tiempo que vivía un hidalgo de los de lanza en astillero, "
            "adarga antigua, rocín flaco y galgo corredor. Una olla de algo más vaca que carnero, "
            "salpicón las más noches, duelos y quebrantos los sábados, lentejas los viernes, "
            "algún palomino de añadidura los domingos, consumían las tres partes de su hacienda.",
            maxLines: 4,
            overflow: TextOverflow.fade,
          ),

          const Padding(padding: EdgeInsets.only(top: 20)),

          // Uso de paquete ReadMore "Leer más / Leer menos"
          ReadMoreText(
            "En un lugar de La Mancha, de cuyo nombre no quiero acordarme, "
            "no hace mucho tiempo que vivía un hidalgo de los de lanza en astillero, "
            "adarga antigua, rocín flaco y galgo corredor. Una olla de algo más vaca que carnero, "
            "salpicón las más noches, duelos y quebrantos los sábados, lentejas los viernes, "
            "algún palomino de añadidura los domingos, consumían las tres partes de su hacienda.",
            trimLines: 4,
            trimMode: TrimMode.Line,
            trimCollapsedText: 'Leer más',
            trimExpandedText: ' Leer menos',
            moreStyle: const TextStyle(color: Colors.blue),
            lessStyle: const TextStyle(color: Colors.blue),
          ),
        ],
      ),
    );
  }
}
