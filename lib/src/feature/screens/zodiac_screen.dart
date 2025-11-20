import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ZodiacScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Zodiac Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Zodiac Screen', style: TextStyle(fontSize: 24)), //Text
            ElevatedButton(
              onPressed: () {
                context.go('/age');
              },
              child: Text('Go to Age Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
