import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  final int index;

  const DrawerItem(this.index, {super.key});

  static const tileHover = Color(0x22FFFFFF);
  static const gold = Color(0xFFD4AF37);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.pop(context);
            Navigator.pushReplacementNamed(context, '/ej$index');
          },
          borderRadius: BorderRadius.circular(12),
          splashColor: tileHover,
          highlightColor: tileHover,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Ejercicio $index",
                  style: const TextStyle(
                    color: gold,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
                const Icon(Icons.chevron_right_rounded, color: gold),
              ],
            ),
          ),
        ),
        Container(
          height: 1,
          color: Color(0x33D4AF37),
          margin: const EdgeInsets.symmetric(horizontal: 20),
        ),
      ],
    );
  }
}
