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
              'Flutter App Drawer',
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
            leading: Icon(Icons.cake),
            title: Text('Age'),
            onTap: () {
              Navigator.of(context).pop();
              context.go('/age');
            },
          ),
          ListTile(
            leading: Icon(Icons.fitness_center),
            title: Text('BMI'),
            onTap: () {
              Navigator.of(context).pop();
              context.go('/bmi');
            },
          ),
          ListTile(
            leading: Icon(Icons.fitness_center),
            title: Text('Zodiac'),
            onTap: () {
              Navigator.of(context).pop();
              context.go('/zodiac');
            },
          ),
        ],
      ),
    );
  }
}
