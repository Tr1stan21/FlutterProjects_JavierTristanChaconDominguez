import 'package:flutter/material.dart';
import 'package:ejercicios_flutter/utils/utils.dart';

class ContadorClicks extends StatefulWidget {
  const ContadorClicks({super.key});

  @override
  State<ContadorClicks> createState() => _ContadorClicksState();
}

class _ContadorClicksState extends State<ContadorClicks> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _setCounter0() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.build('Contador de Clicks'),
      drawer: const SideMenu(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Has pulsado', style: TextStyle(fontSize: 30)),
            SizedBox(height: 15),
            Text(
              '$_counter ${_counter == 1 ? 'vez' : 'veces'}',
              style: TextStyle(fontSize: 35),
            ),
            SizedBox(height: 15),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: _decrementCounter,
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                child: const Text('-',style: TextStyle(fontSize: 25),),
              ),
              ElevatedButton(
                onPressed: _setCounter0,
                style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                child: const Text('0', style: TextStyle(fontSize: 25),),
              ),
              ElevatedButton(
                onPressed: _incrementCounter,
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                child: const Text('+', style: TextStyle(fontSize: 25),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
