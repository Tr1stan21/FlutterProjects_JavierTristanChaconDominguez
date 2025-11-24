import 'package:flutter/material.dart';
import 'package:ejercicios_flutter/utils/utils.dart';
import 'dart:async';
import 'dart:math';

class JuegoImagenes extends StatefulWidget {
  const JuegoImagenes({super.key});

  @override
  State<JuegoImagenes> createState() => _JuegoImagenesState();
}

class _JuegoImagenesState extends State<JuegoImagenes> {
  static const imgRoutes = 'assets/img/';
  final List<String> images = [
    '${imgRoutes}kiwi.png',
    '${imgRoutes}manzana.png',
    '${imgRoutes}melocoton.png',
    '${imgRoutes}pera.png',
    '${imgRoutes}sandia.png',
  ];

  int _currentImgIndex = 0;
  double fracX = 0;
  double fracY = 0;
  double sizeFactor = 0;
  int points = 0;
  int _previousImgIndex = -1;

  bool _isImageVisible = true;
  bool _wasTappedThisTurn = false;

  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startGame();
  }

  void _startGame() {
    setState(() {
      points = 0;
      _isImageVisible = true;
      _wasTappedThisTurn = false;
      _previousImgIndex = -1;
      fracX = 0;
      fracY = 0;
      sizeFactor = 0.1;
    });

    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_isImageVisible && !_wasTappedThisTurn && points > 1) {
          points -= 2;
        }

        if (points >= 15) {
          _timer?.cancel();
          showGameOverDialog();
          return;
        }

        _isImageVisible = true;
        _wasTappedThisTurn = false;

        final random = Random();

        _currentImgIndex = random.nextInt(images.length);
        while (_currentImgIndex == _previousImgIndex) {
          _currentImgIndex = random.nextInt(images.length);
        }
        _previousImgIndex = _currentImgIndex;

        fracX = random.nextDouble();
        fracY = random.nextDouble();
        sizeFactor = 0.06 + random.nextDouble() * (0.14 - 0.06);
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void showGameOverDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: const Text('¡Has ganado!'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                _startGame();
              },
              child: const Text('Volver a jugar'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                _timer?.cancel();
              },
              child: const Text('Salir'),
            ),
          ],
        );
      },
    );
  }

  void onImageTapped() {
    if (!_isImageVisible || _wasTappedThisTurn) return;

    setState(() {
      points += 1;
      _wasTappedThisTurn = true;
      _isImageVisible = false;
    });

    if (points >= 15) {
      _timer?.cancel();
      showGameOverDialog();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.build('Juego de Colores', context),
      drawer: const SideMenu(),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Puntos: $points',
                  style: const TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            Expanded(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  final maxWidth = constraints.maxWidth;
                  final maxHeight = constraints.maxHeight;

                  final imageHeight = sizeFactor * maxHeight;
                  final imageWidth = imageHeight;

                  final maxX = (maxWidth - imageWidth).clamp(0, maxWidth);
                  final maxY = (maxHeight - imageHeight).clamp(0, maxHeight);

                  final posX = fracX * maxX;
                  final posY = fracY * maxY;

                  return Stack(
                    children: [
                      if (_isImageVisible)
                        Positioned(
                          top: posY,
                          left: posX,
                          child: GestureDetector(
                            onTap: onImageTapped,
                            child: Image(
                              image: AssetImage(images[_currentImgIndex]),
                              height: imageHeight,
                            ),
                          ),
                        ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
