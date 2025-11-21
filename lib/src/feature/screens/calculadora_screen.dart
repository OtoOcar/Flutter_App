import 'package:flutter/material.dart';
import 'package:flutter_app/src/feature/widgets/flutter_app_drawer.dart';
import 'package:go_router/go_router.dart';

class CalculadoraScreen extends StatefulWidget {
  @override
  State<CalculadoraScreen> createState() => _CalculadoraScreenState();
}

class _CalculadoraScreenState extends State<CalculadoraScreen> {
  // Controladores para los campos de entrada
  final num1 = TextEditingController();
  final num2 = TextEditingController();

  // Variable para almacenar el resultado
  double resultado = 0;

  // Metodo para realizar los cálculos
  void calcular(String tipo) {
    double a = double.tryParse(num1.text) ?? 0;
    double b = double.tryParse(num2.text) ?? 0;

    setState(() {
      switch (tipo) {
        case "+":
          resultado = a + b;
          break;
        case "-":
          resultado = a - b;
          break;
        case "*":
          resultado = a * b;
          break;
        case "/":
          // Evitar división entre cero
          resultado = (b == 0) ? 0 : a / b;
          break;
      }
    });
  }

  //Widget para crear botones de operación
  Widget botonOperacion(String titulo, String tipo) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () => calcular(tipo),
        child: Text(titulo),
      ),
    );
  }

  //Interfaz principal
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: FlutterAppDrawer(),

      appBar: AppBar(
        title: const Text("Calculadora Básica"),
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //Título
            const Text(
              "Calculadora Básica",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),

            // Campo número 1
            TextField(
              controller: num1,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Número 1",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            // Campo número 2
            TextField(
              controller: num2,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Número 2",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 25),

            // Botones de operaciones
            Row(
              children: [
                botonOperacion("Sumar", "+"),
                const SizedBox(width: 10),
                botonOperacion("Restar", "-"),
              ],
            ),

            const SizedBox(height: 10),

            Row(
              children: [
                botonOperacion("Multiplicar", "*"),
                const SizedBox(width: 10),
                botonOperacion("Dividir", "/"),
              ],
            ),

            const SizedBox(height: 30),

            // Resultado
            Container(
              padding: const EdgeInsets.all(16),
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Text(
                "Resultado: ${resultado.toStringAsFixed(2)}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
