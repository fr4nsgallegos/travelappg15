import 'package:flutter/material.dart';

// SharedPreferences es un mecanismo para guardar datos simples en el dispositivo
// Funciona bajo el concepto de clave -> Valor
// Ejemplo
// "nombre" -> "Jhonny"
// "contador" -> 5

class SharedPrefencesPage extends StatefulWidget {
  SharedPrefencesPage({super.key});

  @override
  State<SharedPrefencesPage> createState() => _SharedPrefencesPageState();
}

class _SharedPrefencesPageState extends State<SharedPrefencesPage> {
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          contador++;
          setState(() {});
        },
      ),
      appBar: AppBar(title: Text("Shared Preferences Page")),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [Text(contador.toString(), style: TextStyle(fontSize: 50))],
        ),
      ),
    );
  }
}
