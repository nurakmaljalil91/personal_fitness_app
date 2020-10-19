import 'package:flutter/material.dart';
import 'package:personal_fitness_app/nav.dart';
import 'package:personal_fitness_app/route_generator.dart';
import './home.dart';
import './add_plan.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.teal[800]),
      home: Nav(),
    );
  }
}
