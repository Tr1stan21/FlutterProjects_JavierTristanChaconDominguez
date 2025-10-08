import 'package:flutter/material.dart';
import 'package:ejercicios_flutter/utils/side_menu.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ejercicios Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ejercicios Flutter'),
        ),
        drawer: Drawer(
          backgroundColor: const Color.fromARGB(255, 41, 40, 43),
          child:
              SideMenu(),
        ),
      ),
    );
  }
}
