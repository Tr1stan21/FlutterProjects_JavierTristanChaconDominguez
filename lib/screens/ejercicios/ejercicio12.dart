import 'package:flutter/material.dart';
import 'package:ejercicios_flutter/utils/utils.dart';
import 'dart:math';
import 'dart:async';

class RandomColors extends StatefulWidget {
  const RandomColors({super.key});

  @override
  State<RandomColors> createState() => _RandomColors();
}

class _RandomColors extends State<RandomColors> {
  int points = 0;
  int timeLeft = 30;
  Timer? gameTimer;
  late String randomName;
  late Color randomColor;
  bool isPlaying = false;

  var colorNames = ['azul', 'verde', 'naranja'];
  var colorHex = [
    const Color(0xFF0000FF),
    const Color(0xFF00FF00),
    const Color(0xFFFF914D),
  ];

  @override
  void initState() {
    super.initState();
    randomColor = Colors.black;
    randomName = '';
    points = 0;
    timeLeft = 30;
    isPlaying = false;
  }

  @override
  void dispose() {
    gameTimer?.cancel();
    super.dispose();
  }

  void startGame() {
    points = 0;
    timeLeft = 30;
    isPlaying = true;

    getRandomColor();
    getRandomName();

    gameTimer?.cancel();
    timer();

    setState(() {});
  }

  void showGameOverDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: const Text('Fin de la partida'),
          content: Text('Puntuación: $points'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                gameTimer?.cancel();
                setState(() {
                  isPlaying = false;
                  points = 0;
                  timeLeft = 30;
                  randomColor = Colors.black;
                  randomName = '';
                });
              },
              child: const Text('Volver al inicio'),
            ),
          ],
        );
      },
    );
  }

  void timer() {
    gameTimer?.cancel();

    gameTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      timeLeft--;

      if (timeLeft > 0) {
        getRandomColor();
        getRandomName();
        setState(() {});
      } else {
        timer.cancel();
        gameTimer = null;
        isPlaying = false;
        setState(() {});
        showGameOverDialog();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.build('Juego de Colores', context),
      drawer: const SideMenu(),
      backgroundColor: const Color(0xFFF2F2F2),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Container(
            padding: const EdgeInsets.all(24.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Puntos y tiempo
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Puntos: $points',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: timeLeft > 5
                            ? const Color.fromRGBO(227, 242, 253, 1)
                            : const Color.fromRGBO(255, 235, 238, 1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        'Tiempo: $timeLeft',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: timeLeft > 5
                              ? const Color.fromRGBO(25, 118, 210, 1)
                              : const Color.fromRGBO(211, 47, 47, 1),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 32),
                // Zona de juego
                GestureDetector(
                  onTap: () {
                    onGiftTap(randomName, randomColor);
                  },
                  child: Column(
                    children: [
                      Container(
                        width: 160,
                        height: 160,
                        decoration: BoxDecoration(
                          color: randomColor,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        randomName,
                        style: TextStyle(
                          color: isPlaying ? Colors.black87 : randomColor,
                          fontSize: 42,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2,
                        ),
                      ),
                      const SizedBox(height: 24),
                      AnimatedOpacity(
                        opacity: isPlaying ? 0.0 : 1.0,
                        duration: const Duration(milliseconds: 250),
                        child: SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                              padding: const EdgeInsets.symmetric(vertical: 14),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            onPressed: isPlaying ? null : startGame,
                            child: const Text(
                              'Jugar',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void getRandomColor() {
    Random random = Random();
    int randomNumber = random.nextInt(3);
    randomColor = colorHex[randomNumber];
  }

  void getRandomName() {
    Random random = Random();
    int randomNumber = random.nextInt(3);
    randomName = colorNames[randomNumber];
  }

  String hexToStringConverter(Color hexColor) {
    if (hexColor == const Color(0xFF0000FF)) {
      return 'azul';
    } else if (hexColor == const Color(0xFF00FF00)) {
      return 'verde';
    } else {
      return 'naranja';
    }
  }

  void onGiftTap(String name, Color color) {
    if (!isPlaying) return;

    var colorToString = hexToStringConverter(color);
    if (name == colorToString) {
      points++;
    } else {
      points--;
    }
    setState(() {});
  }
}
