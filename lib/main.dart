import 'package:flutter/material.dart';
import './widgets/nav_bar_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Nav Bar",
      home: NavigationBarController(),
    );
  }
}
