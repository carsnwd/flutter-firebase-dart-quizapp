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
    return MaterialApp(
      home: Scaffold(
        body: Center(
          ///Flutter can use default UI and switch between Android Material or iOS Cupertino depending on the platform.
          child: Platform.isAndroid ? Switch(value: true, onChanged: (v) => null) : CupertinoSwitch(value: true, onChanged: (v) => null)
        ),
      ),
    );
  }
}
