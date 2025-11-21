import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FlutterAppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text(
              'Panel de Navegación',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.of(context).pop();
              context.go('/');
            },
          ),
          ListTile(
            leading: Icon(Icons.calculate),
            title: const Text('Calculadora'),
            onTap: () {
              Navigator.of(context).pop();
              context.go('/calculadora');
            },
          ),
          ListTile(
            leading: Icon(Icons.percent),
            title: const Text('Ponderada'),
            onTap: () {
              Navigator.of(context).pop();
              context.go('/ponderada');
            },
          ),
          ListTile(
            leading: Icon(Icons.contact_phone),
            title: const Text('Agenda'),
            onTap: () {
              Navigator.of(context).pop();
              context.go('/agenda');
            },
          ),
        ],
      ),
    );
  }
}
