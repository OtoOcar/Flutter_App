import 'package:flutter/material.dart';
import 'package:flutter_app/src/feature/widgets/flutter_app_drawer.dart';
import 'package:go_router/go_router.dart';

class AgeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: FlutterAppDrawer(),
      appBar: AppBar(title: Text('Age Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Age Screen', style: TextStyle(fontSize: 24)), //Text
            ElevatedButton(
              onPressed: () {
                context.go('/bmi');
              },
              child: Text('Go to BMI Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
