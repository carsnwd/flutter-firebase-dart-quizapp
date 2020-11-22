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
      // //Centering a widget
      // home: Scaffold(
      //   appBar: AppBar(title: Text("My Cool App")),
      //   body: Center(
      //     child: Icon(Icons.cake),
      //   ),
      // ),

      // //Align widget
      // home: Scaffold(
      //   appBar: AppBar(title: Text("My Cool App")),
      //   body: Align(
      //     alignment: Alignment.centerRight,
      //     child: Icon(Icons.cake),
      //   ),
      // ),

      // //Padding widget - Uses EdgeInsets to define which padding and pixels
      // home: Scaffold(
      //   appBar: AppBar(title: Text("My Cool App")),
      //   body: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Icon(Icons.cake),
      //   ),
      // ),

      //Container widget can combine many layout widgets into one, but not as readable
      home: Scaffold(
        appBar: AppBar(title: Text("My Cool App")),
        body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.cake),
        ),
      ),
    );
  }
}
