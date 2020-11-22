import 'package:flutter/material.dart';

/// All Dart code requires a main function. We pass in the flutter MyApp widget here.
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  /// Build is similar to JSX React render function
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // home: Scaffold(body: MyFirstStatefulWidget()),
        home: Scaffold(body: MyFirstStatelessWidget(color: Colors.blue)));
  }
}

/// Stateless Widget is a Flutter widget that is not mutable. This one just takes a color and makes a box on the center of the screen.
class MyFirstStatelessWidget extends StatelessWidget {
  final Color color;

  MyFirstStatelessWidget({this.color});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(width: 50, height: 50, color: color),
    );
  }
}

/// Stateful widget is the opposite, a Flutter widget that is mutable.
class MyFirstStatefulWidget extends StatefulWidget {
  @override
  _MyFirstStatefulWidgetState createState() => _MyFirstStatefulWidgetState();
}

class _MyFirstStatefulWidgetState extends State<MyFirstStatefulWidget> {
  int count = 0;
  @override
  void initState() {
    /// This is like ngInit to initialize the widget.
    super.initState();
  }

  @override
  void dispose() {
    /// This is like ngDestory to run when the widget is destroyed.
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
          child: Text("$count"),
          onPressed: () {
            /// This is similar to React, telling the app the state changed and to recall the build function.
            setState(() {
              count++;
            });
          }),
    );
  }
}
