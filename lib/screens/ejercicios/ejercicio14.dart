import 'package:flutter/material.dart';
import 'package:ejercicios_flutter/utils/utils.dart';
import 'dart:math';

class AdivinaElNumero extends StatefulWidget {
  const AdivinaElNumero({super.key});

  @override
  State<AdivinaElNumero> createState() => _AdivinaElNumero();
}

class _AdivinaElNumero extends State<AdivinaElNumero> {
  final TextEditingController _controller = TextEditingController();
  Random random = Random();
  late int randomNumber;
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    randomNumber = random.nextInt(100) + 1;
  }

  void _comprobarNumero() {
    int numeroIngresado = int.tryParse(_controller.text) ?? 0;
    if (numeroIngresado < 1 || numeroIngresado > 100) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Por favor, ingresa un número entero entre 1 y 100'),
          duration: Duration(seconds: 1),
        ),
      );
      return;
    } else if (numeroIngresado == randomNumber) {
      showGameOverDialog();
    } else if (numeroIngresado < randomNumber) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('El número es mayor. Inténtalo de nuevo.'),
          duration: Duration(seconds: 1),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('El número es menor. Inténtalo de nuevo.'),
          duration: Duration(seconds: 1),
        ),
      );
    }
    _controller.clear();
  }

  void showGameOverDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: const Text('¡Felicidades, Has adivinado el número!'),
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

  void _startGame() {
    setState(() {
      randomNumber = random.nextInt(100) + 1;
      _controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.build('Juego de Colores', context),
      drawer: const SideMenu(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  focusNode: _focusNode,
                  keyboardType: TextInputType.number,
                  controller: _controller,
                  decoration: const InputDecoration(
                    labelText: 'Adivina el número',
                    hintText: 'Introduce un número',
                    border: OutlineInputBorder(),
                  ),
                  onSubmitted: (_) {
                    _comprobarNumero();
                    _focusNode.requestFocus();
                  },
                ),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: _comprobarNumero,
                child: const Text("Adivinar"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
