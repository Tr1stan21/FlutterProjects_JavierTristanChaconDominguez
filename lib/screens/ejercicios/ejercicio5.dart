import 'package:ejercicios_flutter/utils/side_menu.dart';
import 'package:ejercicios_flutter/utils/custom_app_bar.dart';
import 'package:flutter/material.dart';

class CincoImagenesColumnas extends StatelessWidget {
  const CincoImagenesColumnas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.build('Cinco Imágenes en Columnas'),
      drawer: const SideMenu(),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Image.network(
              'https://images.pexels.com/photos/433989/pexels-photo-433989.jpeg?_gl=1*1108mno*_ga*MTQ2MTE5MTcwOC4xNzYwMTEzODY2*_ga_8JE65Q40S6*czE3NjAyNzYzNjMkbzMkZzEkdDE3NjAyNzYzODIkajQxJGwwJGgw',
              height: 300,
              fit: BoxFit.fitWidth,
            ),
          ),
          const VerticalDivider(color: Colors.black, width: 1, thickness: 1),
          Expanded(
            child: Image.network(
              'https://images.pexels.com/photos/804605/pexels-photo-804605.jpeg?_gl=1*1gz2i0h*_ga*MTQ2MTE5MTcwOC4xNzYwMTEzODY2*_ga_8JE65Q40S6*czE3NjAyNzYzNjMkbzMkZzEkdDE3NjAyNzYzODIkajQxJGwwJGgw ',
              height: 300,
              fit: BoxFit.fitWidth,
            ),
          ),
          const VerticalDivider(color: Colors.black, width: 1, thickness: 1),
          Expanded(
            child: Image.network(
              'https://images.pexels.com/photos/1459505/pexels-photo-1459505.jpeg?_gl=1*1gw9ijr*_ga*MTQ2MTE5MTcwOC4xNzYwMTEzODY2*_ga_8JE65Q40S6*czE3NjAyNzYzNjMkbzMkZzEkdDE3NjAyNzYzODIkajQxJGwwJGgw',
              height: 300,
              fit: BoxFit.fitWidth,
            ),
          ),
          const VerticalDivider(color: Colors.black, width: 1, thickness: 1),
          Expanded(
            child: Image.network(
              'https://images.pexels.com/photos/1461264/pexels-photo-1461264.jpeg?_gl=1*1h79n8r*_ga*MTQ2MTE5MTcwOC4xNzYwMTEzODY2*_ga_8JE65Q40S6*czE3NjAyNzYzNjMkbzMkZzEkdDE3NjAyNzgzODQkajUzJGwwJGgw',
              height: 300,
              fit: BoxFit.fitWidth,
            ),
          ),
          const VerticalDivider(color: Colors.black, width: 1, thickness: 1),
          Expanded(
            child: Image.network(
              'https://images.pexels.com/photos/34232107/pexels-photo-34232107.jpeg?_gl=1*1h79n8r*_ga*MTQ2MTE5MTcwOC4xNzYwMTEzODY2*_ga_8JE65Q40S6*czE3NjAyNzYzNjMkbzMkZzEkdDE3NjAyNzgzODQkajUzJGwwJGgw',
              height: 300,
              fit: BoxFit.fitWidth,
            ),
          ),
        ],
      ),
    );
  }
}
