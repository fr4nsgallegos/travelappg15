import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

  final TextEditingController nombreController = TextEditingController();
  String nombreGuardado = "Aún no hay un nombre guardado";

  Future<void> guardarNombre() async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setString("nombre", nombreController.text);
    nombreGuardado = nombreController.text;
    nombreController.clear();
    setState(() {});
  }

  Future<void> cargarNombre() async {
    final prefs = await SharedPreferences.getInstance();
    final nombre = prefs.getString("nombre") ?? "Aún no hay un nombre guardado";
    nombreGuardado = nombre;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    cargarNombre();
  }

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
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nombreController,
                decoration: InputDecoration(
                  labelText: "Escribe tu nombre",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  guardarNombre();
                },
                child: Text("Guardar Nombre"),
              ),
              // ElevatedButton(
              //   onPressed: () {
              //     cargarNombre();
              //   },
              //   child: Text("CARGAR Nombre"),
              // ),
              SizedBox(height: 32),
              Text("Nombre guardado:"),
              Text(
                nombreGuardado,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),

              Divider(),
              Text(contador.toString(), style: TextStyle(fontSize: 50)),
            ],
          ),
        ),
      ),
    );
  }
}
