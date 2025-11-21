import 'package:flutter/material.dart';
import 'package:flutter_app/src/routes/flutter_app_router.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: FlutterAppRouter.router,
      // Configuaración del tema global de la aplicación
      theme: ThemeData(
        primarySwatch: Colors.blue,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 9, 64, 109),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 22),
          ),
        ),
      ),
    );
  }
}
