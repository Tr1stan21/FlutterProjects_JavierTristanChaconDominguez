import 'package:flutter/material.dart';
import 'package:ejercicios_flutter/utils/custom_app_bar.dart';
import 'package:ejercicios_flutter/utils/side_menu.dart';

class DesafioHelipuerto extends StatelessWidget {
  const DesafioHelipuerto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.build('Desafío helipuerto'),
      drawer: const SideMenu(),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.black, width: 10),
          ),
          width: 280,
          height: 280,
          alignment: Alignment.center,
          child: Text(
            'H',
            style: TextStyle(fontSize: 180, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
