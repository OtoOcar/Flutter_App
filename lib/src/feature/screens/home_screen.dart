import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_app/src/feature/widgets/flutter_app_drawer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: FlutterAppDrawer(),
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        title: Text('Inicio'),
      ),

      // Botones principales
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Calculadora Básica
            ElevatedButton.icon(
              icon: Icon(Icons.calculate),
              label: Text('Calculadora'),
              onPressed: () => context.go('/calculadora'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 55),
              ),
            ),
            SizedBox(height: 20),

            // Media Ponderada
            ElevatedButton.icon(
              icon: Icon(Icons.percent),
              label: Text('Media Ponderada'),
              onPressed: () => context.go('/ponderada'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 55),
              ),
            ),
            SizedBox(height: 20),

            // Agenda Simple
            ElevatedButton.icon(
              icon: Icon(Icons.contact_phone),
              label: Text('Agenda'),
              onPressed: () => context.go('/agenda'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 55),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
