import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BmiScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('BMI Screen', style: TextStyle(fontSize: 24)), //Text
            ElevatedButton(
              onPressed: () {
                context.go('/');
              },
              child: Text('Go to Home Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
