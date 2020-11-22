import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// All Dart code requires a main function. We pass in the flutter MyApp widget here.
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  /// Build is similar to JSX React render function
  @override
  Widget build(BuildContext context) {
    /// MaterialApp is just the root app context for a Flutter app, it defines things like routes, themes, analytics etc.
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
                /*border: Border.all(width: 5, color: Colors.green),
                boxShadow: [
                  BoxShadow(offset: Offset(20, 20), color: Colors.pink),
                  BoxShadow(offset: Offset(20, 20), color: Colors.yellow)
                ]*/
                gradient: LinearGradient(colors: [Colors.yellow, Colors.green])),
          ),
        ),
      ),
    );
  }
}
