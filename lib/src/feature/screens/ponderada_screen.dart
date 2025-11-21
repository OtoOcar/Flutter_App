import 'package:flutter/material.dart';
import 'package:flutter_app/src/feature/widgets/flutter_app_drawer.dart';
import 'package:go_router/go_router.dart';

class PonderadaScreen extends StatefulWidget {
  @override
  State<PonderadaScreen> createState() => _PonderadaScreenState();
}

class _PonderadaScreenState extends State<PonderadaScreen> {
  // Controladores para 5 notas y sus porcentajes
  final nota1 = TextEditingController();
  final nota2 = TextEditingController();
  final nota3 = TextEditingController();
  final nota4 = TextEditingController();
  final nota5 = TextEditingController();

  final porc1 = TextEditingController();
  final porc2 = TextEditingController();
  final porc3 = TextEditingController();
  final porc4 = TextEditingController();
  final porc5 = TextEditingController();

  // Resultados individuales y total
  double r1 = 0;
  double r2 = 0;
  double r3 = 0;
  double r4 = 0;
  double r5 = 0;
  double total = 0;

  //Funcion para calcular la media ponderada
  void calcular() {
    // Conversión de entradas a números
    double n1 = double.tryParse(nota1.text) ?? 0;
    double n2 = double.tryParse(nota2.text) ?? 0;
    double n3 = double.tryParse(nota3.text) ?? 0;
    double n4 = double.tryParse(nota4.text) ?? 0;
    double n5 = double.tryParse(nota5.text) ?? 0;

    // Conversión de porcentajes a decimales
    double p1 = (double.tryParse(porc1.text) ?? 0) / 100;
    double p2 = (double.tryParse(porc2.text) ?? 0) / 100;
    double p3 = (double.tryParse(porc3.text) ?? 0) / 100;
    double p4 = (double.tryParse(porc4.text) ?? 0) / 100;
    double p5 = (double.tryParse(porc5.text) ?? 0) / 100;

    // Cálculo individual
    setState(() {
      r1 = n1 * p1;
      r2 = n2 * p2;
      r3 = n3 * p3;
      r4 = n4 * p4;
      r5 = n5 * p5;

      // Total final
      total = r1 + r2 + r3 + r4 + r5;
    });
  }

  //Widget para cada fila de entrada y resultado
  Widget fila(
    TextEditingController nota,
    TextEditingController porc,
    double r,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        children: [
          // Caja para notas
          Expanded(
            child: TextField(
              controller: nota,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Nota",
                border: OutlineInputBorder(),
              ),
            ),
          ),

          const SizedBox(width: 10),

          // Caja para porcentajes
          Expanded(
            child: TextField(
              controller: porc,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "%",
                border: OutlineInputBorder(),
              ),
            ),
          ),

          const SizedBox(width: 10),

          // Caja parar resultado
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(r.toStringAsFixed(2), textAlign: TextAlign.center),
            ),
          ),
        ],
      ),
    );
  }

  //Interfaz principal
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: FlutterAppDrawer(),
      appBar: AppBar(
        title: const Text('Media Ponderada'),
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
        padding: const EdgeInsets.all(16.0),

        child: Column(
          children: [
            const Text(
              "Calculadora de Media Ponderada",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            // Encabezados de las columnas
            const SizedBox(height: 20),
            Row(
              children: const [
                Expanded(
                  child: Text(
                    "Nota",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(width: 15),
                Expanded(
                  child: Text(
                    "Porcentaje",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(width: 15),
                Expanded(
                  child: Text(
                    "Resultado",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),

            // Las 5 filas (nota + % + resultado)
            fila(nota1, porc1, r1),
            fila(nota2, porc2, r2),
            fila(nota3, porc3, r3),
            fila(nota4, porc4, r4),
            fila(nota5, porc5, r5),

            const SizedBox(height: 25),

            // Botón para calcular
            ElevatedButton(onPressed: calcular, child: const Text("Calcular")),

            const SizedBox(height: 25),

            // Total final
            Container(
              padding: const EdgeInsets.all(16),
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.green),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Text(
                "Total: ${total.toStringAsFixed(2)}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
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
