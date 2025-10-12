import 'package:ejercicios_flutter/utils/side_menu.dart';
import 'package:flutter/material.dart';

class CincoImagenesFilas extends StatelessWidget {
  const CincoImagenesFilas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cinco Iconos en Filas')),
      drawer: const SideMenu(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: const FittedBox(
                fit: BoxFit.contain, // Se ajusta sin deformar
                child: Icon(Icons.access_alarm_rounded),
              ),
            ),
            const Divider(color: Colors.black, thickness: 1, height: 1),

            Expanded(
              child: const FittedBox(
                fit: BoxFit.contain,
                child: Icon(Icons.account_balance_wallet),
              ),
            ),
            const Divider(color: Colors.black, thickness: 1, height: 1),

            Expanded(
              child: const FittedBox(
                fit: BoxFit.contain,
                child: Icon(Icons.baby_changing_station_rounded),
              ),
            ),
            const Divider(color: Colors.black, thickness: 1, height: 1),

            Expanded(
              child: const FittedBox(
                fit: BoxFit.contain,
                child: Icon(Icons.join_inner),
              ),
            ),
            const Divider(color: Colors.black, thickness: 1, height: 1),

            Expanded(
              child: const FittedBox(
                fit: BoxFit.contain,
                child: Icon(Icons.local_activity_sharp),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
