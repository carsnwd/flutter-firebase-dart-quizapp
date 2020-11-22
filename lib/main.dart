import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io' show Platform;

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
      theme: ThemeData(brightness: Brightness.dark), //defines just theme data
      home: Scaffold(), //this is a route, more later
    );
  }
}
