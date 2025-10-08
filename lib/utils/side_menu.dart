import 'package:flutter/material.dart';
import 'package:ejercicios_flutter/screens/ejercicio1.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    // ListView permite que el menú se pueda desplazar si hay muchos elementos
    return ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        const UserAccountsDrawerHeader(
          // Encabezado del menú con información de usuario
          accountName: Text(
            "Javier Tristán Chacón Domínguez",
            style: TextStyle(color: Color.fromARGB(255, 255, 2, 2)),
          ),
          accountEmail: Text(
            "Relación de Ejercicios",
            style: TextStyle(color: Color.fromARGB(255, 255, 2, 2)),
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              // Imagen de fondo cargada desde una URL
              image: NetworkImage(
                "https://img.freepik.com/foto-gratis/que-hermosa_1203-2633.jpg?semt=ais_hybrid&w=740&q=80",
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
                Ink(
          // Widget para aplicar color de fondo y efectos táctiles
          color: const Color.fromARGB(255, 139, 191, 240),
          child: ListTile(
            title: const Text("Ejercicio 1"),
            onTap: () {
              Navigator.of(context).pop(); // Cierra el menú lateral
              Navigator.of(context).push(
                // Navega a la nueva pantalla
                MaterialPageRoute(
                  builder: (BuildContext context) => const InfomacionPersonal(),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}