import 'package:flutter/material.dart';
import 'package:ejercicios_flutter/utils/utils.dart';

class TextoImagen extends StatelessWidget {
  const TextoImagen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.build('Nombre e imagen', context),
      drawer: const SideMenu(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              "https://plus.unsplash.com/premium_photo-1661909235962-12afdb447d3b?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=2134",
            ),
            Text(
              'Javier Tristán Chacón Domínguez',
              style: const TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
