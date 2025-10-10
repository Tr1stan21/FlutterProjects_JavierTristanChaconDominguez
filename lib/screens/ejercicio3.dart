import 'package:ejercicios_flutter/utils/side_menu.dart';
import 'package:flutter/material.dart';

class TresFotosColumnas extends StatelessWidget {
  const TresFotosColumnas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tres Fotos en Columnas')),
      drawer: const SideMenu(),
      //body:
    );
  }
}
