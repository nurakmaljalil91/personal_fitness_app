import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:english_words/english_words.dart';
import './random_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.purple[900]),
        home: RandomWords());
  }
}
