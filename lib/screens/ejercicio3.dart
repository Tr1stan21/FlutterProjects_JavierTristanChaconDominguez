import 'package:ejercicios_flutter/utils/side_menu.dart';
import 'package:flutter/material.dart';

class TresFotosColumnas extends StatelessWidget {
  const TresFotosColumnas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tres Fotos en Columnas')),
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
        ],
      ),
    );
  }
}
