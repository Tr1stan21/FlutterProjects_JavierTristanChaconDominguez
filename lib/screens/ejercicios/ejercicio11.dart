import 'package:ejercicios_flutter/utils/side_menu.dart';
import 'package:ejercicios_flutter/utils/custom_app_bar.dart';
import 'package:flutter/material.dart';

class InterfazInstagram extends StatelessWidget {
  const InterfazInstagram({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.build('Interfaz Instagram'),
      drawer: const SideMenu(),
        body: Column(
          children: [
            Row(children: [
              Column(children: [Icon(Icons.arrow_back)],),
              Column(children: [Text('javiichd_24')],),
              Column(children: [Icon(Icons.more_horiz)],),
            ],),
            Row(),
            Row(),
            Row(),
            Row(),
            Row(),
            Row(),
          ],
        ),
    );
  }
}
