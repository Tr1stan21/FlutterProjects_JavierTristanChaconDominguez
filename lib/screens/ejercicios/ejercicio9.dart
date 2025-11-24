import 'package:flutter/material.dart';
import 'package:ejercicios_flutter/utils/utils.dart';

class DesafioHelipuerto extends StatelessWidget {
  const DesafioHelipuerto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.build('Desafío helipuerto', context),
      drawer: const SideMenu(),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              width: 10,
              color: Theme.of(context).iconTheme.color!,
            ),
          ),
          width: 280,
          height: 280,
          alignment: Alignment.center,
          child: Text('H', style: TextStyle(fontSize: 180)),
        ),
      ),
    );
  }
}
