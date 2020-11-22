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
          child: Expanded(
            child: Text(
              "Hello World this is too long",
              ///You can define a theme to use in a text from the context...
              style: Theme.of(context).textTheme.headline3
              /// Or manually create your own.
              /*overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: Colors.purple,
                    fontSize: 50,
                    fontWeight: FontWeight.bold)*/
            ),
          ),
        ),
      ),
    );
  }
}
