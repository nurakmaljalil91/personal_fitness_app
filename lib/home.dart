import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import './add_plan.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          height: size.height * .35,
          decoration: BoxDecoration(
            color: Colors.teal[800],
          ),
        ),
        Container(
          child: SizedBox(
            height: 200.0,
            child: ListView(
              padding: const EdgeInsets.all(8),
              children: <Widget>[
                Container(
                  height: 50,
                  color: Colors.amber[600],
                  child: const Center(child: Text('Entry A')),
                ),
                Container(
                  height: 50,
                  color: Colors.amber[500],
                  child: const Center(child: Text('Entry B')),
                ),
                Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: const Center(child: Text('Entry C')),
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
