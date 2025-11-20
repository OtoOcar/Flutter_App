import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Home Screen', style: TextStyle(fontSize: 24)), //Text
            ElevatedButton(
              onPressed: () {
                context.go('/zodiac');
              },
              child: Text('Go to Zodiac Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
