import 'package:flutter/material.dart';
import './home.dart';
import './add_plan.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.purple[900]), home: HomeScreen());
  }
}
