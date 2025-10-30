import 'package:ejercicios_flutter/utils/side_menu.dart';
import 'package:ejercicios_flutter/utils/custom_app_bar.dart';
import 'package:flutter/material.dart';

class TresImagenesFilas extends StatelessWidget {
  const TresImagenesFilas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.build('Tres Imágenes en Filas'),
      drawer: const SideMenu(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: FittedBox(
                child: Image.asset('assets/img/paisajeEj7.jpeg'),
              ),
            ),
            const Divider(color: Colors.black, thickness: 1, height: 1),

            Expanded(
              child: FittedBox(
                child: Image.network(
                  "https://images.pexels.com/photos/33787011/pexels-photo-33787011.jpeg?_gl=1*1bh7q0q*_ga*MTQ2MTE5MTcwOC4xNzYwMTEzODY2*_ga_8JE65Q40S6*czE3NjAyNzYzNjMkbzMkZzEkdDE3NjAyODA1NjQkajMwJGwwJGgw",
                ),
              ),
            ),
            const Divider(color: Colors.black, thickness: 1, height: 1),

            Expanded(
              child: FittedBox(
                child: Image.network(
                  "https://images.pexels.com/photos/33787011/pexels-photo-33787011.jpeg?_gl=1*1bh7q0q*_ga*MTQ2MTE5MTcwOC4xNzYwMTEzODY2*_ga_8JE65Q40S6*czE3NjAyNzYzNjMkbzMkZzEkdDE3NjAyODA1NjQkajMwJGwwJGgw",
                ),
              ),
            ),
            const Divider(color: Colors.black, thickness: 1, height: 1),
          ],
        ),
      ),
    );
  }
}
