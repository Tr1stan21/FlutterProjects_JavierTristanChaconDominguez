import 'package:flutter/material.dart';
import 'package:ejercicios_flutter/screens/ejercicios/ejercicio16/pantalla1.dart';
import 'dart:math';

class Pantalla3 extends StatefulWidget {
  const Pantalla3({super.key});

  @override
  State<Pantalla3> createState() => _Pantalla3State();
}

class _Pantalla3State extends State<Pantalla3> {
  Random random = Random();
  late int _randomNumber;
  late int _total;

  @override
  void initState() {
    super.initState();
    _randomNumber = 0;
    _total = 0;
  }

  /**
   * Resetear juego
   */
  void _startGame() {
    setState(() {
      _randomNumber = 0;
      _total = 0;
    });
  }

  /**
   * Mostrar dialogo si ganar
   */
  void showWinDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: const Text('¡Felicidades, has ganado!'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                _startGame();
              },
              child: const Text('Volver a jugar'),
            ),
          ],
        );
      },
    );
  }

  /**
   * Mostrar dialogo si te pasas
   */
  void showGameOverDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: const Text('Ups! Te has pasado'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                _startGame();
              },
              child: const Text('Volver a intentar'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: const Text(
            'Javier Tristán Chacón Domínguez - 2ºDAM',
            style: TextStyle(fontSize: 14),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Pulsa el botón para generar un número aleatorio, si la suma es igual a 51, has ganado',
          ),
          Text('Total: $_total'),
          Text('$_randomNumber'),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _randomNumber = random.nextInt(6) + 1;
                _total += _randomNumber;

                if (_total == 51) {
                  showWinDialog();
                } else if (_total > 51) {
                  showGameOverDialog();
                }
              });
            },
            child: Text('Generar número'),
          ),

          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Pantalla1()),
              );
            },
            child: Text('Pantalla 1'),
          ),
        ],
      ),
    );
  }
}
