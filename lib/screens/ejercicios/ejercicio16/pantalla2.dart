import 'package:flutter/material.dart';
import 'package:ejercicios_flutter/screens/ejercicios/ejercicio16/pantalla3.dart';

class Pantalla2 extends StatefulWidget {
  const Pantalla2({super.key});

  @override
  State<Pantalla2> createState() => _Pantalla2State();
}

class _Pantalla2State extends State<Pantalla2> {
  bool _marca = false;

  bool _i3 = false;
  bool _i5 = false;
  bool _i7 = false;
  bool _i9 = false;

  bool _ryzen3 = false;
  bool _ryzen5 = false;
  bool _ryzen7 = false;
  bool _ryzen9 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: const Text(
            'Javier Tristán Chacón Domínguez - 2ºDAM',
            style: TextStyle(fontSize: 14),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Row(
              children: [
                Text('Preferencia de microprocesadoes Intel/AMD'),
                Switch(
                  value: _marca,
                  onChanged: (value) {
                    setState(() {
                      _marca = value;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 10),
            _marca ? _formularioAmd() : _formularioIntel(),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Pantalla3()),
                );
              },
              child: Text('Pantalla 3'),
            ),
          ],
        ),
      ),
    );
  }

  /**
   * Contenedor con el formulario de intel
   */
  Widget _formularioIntel() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 227, 242, 253),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Elige los procesadores Intel que más te gusten:",
            style: TextStyle(
              fontSize: 16,
              color: Colors.black87,
              fontWeight: FontWeight.w600,
            ),
          ),
          CheckboxListTile(
            title: Text("i3"),
            value: _i3,
            onChanged: (v) => setState(() => _i3 = v!),
          ),
          CheckboxListTile(
            title: Text("i5"),
            value: _i5,
            onChanged: (v) => setState(() => _i5 = v!),
          ),
          CheckboxListTile(
            title: Text("i7"),
            value: _i7,
            onChanged: (v) => setState(() => _i7 = v!),
          ),
          CheckboxListTile(
            title: Text("i9"),
            value: _i9,
            onChanged: (v) => setState(() => _i9 = v!),
          ),
        ],
      ),
    );
  }

  /**
   * Contenedor con el formulario de AMD
   */
  Widget _formularioAmd() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 227, 242, 253),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Elige los procesadores AMD que más te gusten:",
            style: TextStyle(
              fontSize: 16,
              color: Colors.black87,
              fontWeight: FontWeight.w600,
            ),
          ),
          CheckboxListTile(
            title: Text("Ryzen 3"),
            value: _ryzen3,
            onChanged: (v) => setState(() => _ryzen3 = v!),
          ),
          CheckboxListTile(
            title: Text("Ryzen 5"),
            value: _ryzen5,
            onChanged: (v) => setState(() => _ryzen5 = v!),
          ),
          CheckboxListTile(
            title: Text("Ryzen 7"),
            value: _ryzen7,
            onChanged: (v) => setState(() => _ryzen7 = v!),
          ),
          CheckboxListTile(
            title: Text("Ryzen 9"),
            value: _ryzen9,
            onChanged: (v) => setState(() => _ryzen9 = v!),
          ),
        ],
      ),
    );
  }
}
