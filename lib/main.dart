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
      theme: ThemeData(
        primarySwatch: Colors.blue,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 22),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Exercises',
    );
  }
}
