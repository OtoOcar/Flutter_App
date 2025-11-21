import 'package:flutter_app/src/feature/screens/calculadora_screen.dart';
import 'package:flutter_app/src/feature/screens/ponderada_screen.dart';
import 'package:flutter_app/src/feature/screens/home_screen.dart';
import 'package:flutter_app/src/feature/screens/agenda_screen.dart';
import 'package:go_router/go_router.dart';

class FlutterAppRouter {
  static GoRouter get router => GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => HomeScreen()),
      GoRoute(
        path: '/calculadora',
        builder: (context, state) => CalculadoraScreen(),
      ),
      GoRoute(
        path: '/ponderada',
        builder: (context, state) => PonderadaScreen(),
      ),
      GoRoute(path: '/agenda', builder: (context, state) => AgendaScreen()),
    ],
  );
}
