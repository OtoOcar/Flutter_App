import 'package:flutter/material.dart';
import 'package:flutter_app/src/feature/screens/age_screen.dart';
import 'package:flutter_app/src/feature/screens/bmi_screen.dart';
import 'package:flutter_app/src/feature/screens/home_screen.dart';
import 'package:flutter_app/src/routes/flutter_app_router.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: FlutterAppRouter.router);
  }
}
