import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'data',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextSection(Colors.red),
          TextSection(Colors.green),
          TextSection(Colors.blue),
        ],
      ),
    );
  }
}

class TextSection extends StatelessWidget {
  final Color _color;
  TextSection(this._color);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: _color),
      child: Text('Hi'),
    );
  }
}
