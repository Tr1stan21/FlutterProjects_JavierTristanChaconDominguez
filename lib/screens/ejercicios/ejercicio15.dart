import 'package:flutter/material.dart';

class FormularioBasico extends StatefulWidget {
  const FormularioBasico({super.key});

  @override
  State<FormularioBasico> createState() => _FormularioBasicoState();
}

class _FormularioBasicoState extends State<FormularioBasico> {
  bool mostrarComidas = false;

  bool pizza = false;
  bool pasta = false;
  bool hamburguesa = false;
  bool ensalada = false;

  bool agua = false;
  bool cafe = false;
  bool refresco = false;
  bool te = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Preferencias")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Switch principal
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Mostrar comidas / bebidas",
                  style: TextStyle(fontSize: 18),
                ),
                Switch(
                  value: mostrarComidas,
                  onChanged: (v) {
                    setState(() => mostrarComidas = v);
                  },
                ),
              ],
            ),
            const SizedBox(height: 20),
            mostrarComidas ? _formularioComidas() : _formularioBebidas(),
          ],
        ),
      ),
    );
  }

  Widget _formularioComidas() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 237, 231, 246),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Elige tus comidas favoritas:",
            style: TextStyle(
              fontSize: 16,
              color: Colors.black87,
              fontWeight: FontWeight.w600,
            ),
          ),
          CheckboxListTile(
            title: Text("Pizza"),
            value: pizza,
            onChanged: (v) => setState(() => pizza = v!),
          ),
          CheckboxListTile(
            title: Text("Pasta"),
            value: pasta,
            onChanged: (v) => setState(() => pasta = v!),
          ),
          CheckboxListTile(
            title: Text("Hamburguesa"),
            value: hamburguesa,
            onChanged: (v) => setState(() => hamburguesa = v!),
          ),
          CheckboxListTile(
            title: Text("Ensalada"),
            value: ensalada,
            onChanged: (v) => setState(() => ensalada = v!),
          ),
        ],
      ),
    );
  }

  Widget _formularioBebidas() {
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
            "Elige tus bebidas favoritas:",
            style: TextStyle(
              fontSize: 16,
              color: Colors.black87,
              fontWeight: FontWeight.w600,
            ),
          ),
          CheckboxListTile(
            title: Text("Agua"),
            value: agua,
            onChanged: (v) => setState(() => agua = v!),
          ),
          CheckboxListTile(
            title: Text("Café"),
            value: cafe,
            onChanged: (v) => setState(() => cafe = v!),
          ),
          CheckboxListTile(
            title: Text("Refresco"),
            value: refresco,
            onChanged: (v) => setState(() => refresco = v!),
          ),
          CheckboxListTile(
            title: Text("Té"),
            value: te,
            onChanged: (v) => setState(() => te = v!),
          ),
        ],
      ),
    );
  }
}
