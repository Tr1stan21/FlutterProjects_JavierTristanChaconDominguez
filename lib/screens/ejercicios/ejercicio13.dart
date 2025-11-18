import 'package:flutter/material.dart';
import 'package:ejercicios_flutter/utils/utils.dart';

class JuegoImagenes extends StatefulWidget {
  const JuegoImagenes({super.key});

  @override
  State<JuegoImagenes> createState() => _JuegoImagenes();
}

class _JuegoImagenes extends State<JuegoImagenes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.build('Juego de Colores'),
      drawer: const SideMenu(),
      body: Container(),
    );
  }
}
