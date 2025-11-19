import 'package:flutter/material.dart';
import 'package:ejercicios_flutter/utils/utils.dart';
import 'dart:async';
import 'dart:math';

class JuegoImagenes extends StatefulWidget {
  const JuegoImagenes({super.key});

  @override
  State<JuegoImagenes> createState() => _JuegoImagenes();
}

class _JuegoImagenes extends State<JuegoImagenes> {
  static const imgRoutes = 'assets/img/';
  final List<String> images = ['${imgRoutes}kiwi.png', '${imgRoutes}manzana.png', '${imgRoutes}melocoton.png', '${imgRoutes}pera.png', '${imgRoutes}sandia.png'];
  int _currentImgIndex = 0;
  double posX = 0;
  double posY = 0;
  late int _previousImgIndex = -1;
  late Timer timer;

@override
void initState() {
  super.initState();

  timer = Timer.periodic(const Duration(seconds: 1), (timer) {
    setState(() {
      Random random = Random();
      _currentImgIndex = random.nextInt(images.length);
      while (_currentImgIndex == _previousImgIndex) {
        _currentImgIndex = random.nextInt(images.length);
      }
      _previousImgIndex = _currentImgIndex;

      posX = random.nextDouble() * MediaQuery.of(context).size.width;
      posY = random.nextDouble() * MediaQuery.of(context).size.height;
    });
  });
}

@override
void dispose() {
  timer.cancel();
  super.dispose();
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.build('Juego de Colores'),
      drawer: const SideMenu(),
      body: 
      SafeArea(
        child: Stack(children: [Positioned(
          top: posY,
          left: posX,
          child: Image(image: AssetImage(images[_currentImgIndex]),height: (0.1*MediaQuery.of(context).size.height),),),],),
      ), 
    );
  }
}
