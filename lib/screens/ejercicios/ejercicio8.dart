import 'package:flutter/material.dart';
import 'package:ejercicios_flutter/utils/utils.dart';

class FilasColumnasAnidadas extends StatelessWidget {
  const FilasColumnasAnidadas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.build('Filas y columnas anidadas'),
      drawer: const SideMenu(),
      body: Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final boxSize = constraints.maxWidth * 0.30;
            final iconSize = boxSize * 0.7;
            final textSize = boxSize * 0.15;

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: boxSize,
                      height: boxSize,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.zoom_out_sharp, size: iconSize),
                          Text('Zoom', style: TextStyle(fontSize: textSize)),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: boxSize,
                      height: boxSize,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.join_full, size: iconSize),
                          Text('Join', style: TextStyle(fontSize: textSize)),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: boxSize,
                      height: boxSize,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.abc_sharp, size: iconSize),
                          Text('ABC', style: TextStyle(fontSize: textSize)),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: boxSize,
                      height: boxSize,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.access_alarm_rounded, size: iconSize),
                          Text('Alarma', style: TextStyle(fontSize: textSize)),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: boxSize,
                      height: boxSize,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.account_balance_wallet, size: iconSize),
                          Text('Cartera', style: TextStyle(fontSize: textSize)),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: boxSize,
                      height: boxSize,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.baby_changing_station_rounded,
                            size: iconSize,
                          ),
                          Text('Bebé', style: TextStyle(fontSize: textSize)),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
