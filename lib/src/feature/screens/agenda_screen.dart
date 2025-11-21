import 'package:flutter/material.dart';
import 'package:flutter_app/src/feature/widgets/flutter_app_drawer.dart';
import 'package:go_router/go_router.dart';

class AgendaScreen extends StatefulWidget {
  @override
  State<AgendaScreen> createState() => _AgendaScreenState();
}

class _AgendaScreenState extends State<AgendaScreen> {
  //Controladores para los campos de entrada
  final nombre = TextEditingController();
  final telefono = TextEditingController();

  //Lista para almacenar los contactos
  final List<Map<String, String>> contactos = [];

  //Metodo para agregar contacto a la lista
  void agregarContacto() {
    String n = nombre.text.trim();
    String t = telefono.text.trim();

    if (n.isEmpty || t.isEmpty) return;

    setState(() {
      contactos.add({"nombre": n, "telefono": t});
      nombre.clear();
      telefono.clear();
    });
  }

  //Metodo para eliminar contacto de la lista
  void eliminarContacto(int index) {
    setState(() {
      contactos.removeAt(index);
    });
  }

  //Interfaz principal
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: FlutterAppDrawer(),

      appBar: AppBar(
        title: const Text("Agenda Simple"),
        // Icono para volver al inicio
        actions: [
          IconButton(
            icon: const Icon(Icons.home),
            tooltip: 'Volver al inicio',
            onPressed: () {
              context.go('/');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Título
            const Center(
              child: Text(
                "Agenda de Contactos",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),

            const SizedBox(height: 20),

            // Campo Nombre
            TextField(
              controller: nombre,
              decoration: const InputDecoration(
                labelText: "Nombre",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            // Campo Teléfono
            TextField(
              controller: telefono,
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                labelText: "Teléfono",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            // Botón Agregar Contacto
            Center(
              child: ElevatedButton(
                onPressed: agregarContacto,
                child: const Text("Agregar Contacto"),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Contactos Registrados:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            // Lista de Contactos
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: contactos.length,
              itemBuilder: (context, index) {
                final c = contactos[index];

                return Card(
                  child: ListTile(
                    title: Text(c["nombre"]!),
                    subtitle: Text(c["telefono"]!),

                    // Botón para eliminar
                    trailing: IconButton(
                      icon: const Icon(Icons.delete, color: Colors.red),
                      onPressed: () => eliminarContacto(index),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
