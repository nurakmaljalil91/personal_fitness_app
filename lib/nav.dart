import 'package:flutter/material.dart';
import 'package:personal_fitness_app/add_plan.dart';
import 'package:personal_fitness_app/home.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _currentIndex = 1;
  List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    AddPlanScreen(data: 'test'),
    Text('Analysis')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_currentIndex),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        color: Colors.teal[800],
        items: <Widget>[
          Icon(
            Icons.verified_user,
            size: 20,
            color: Colors.white,
          ),
          Icon(
            Icons.add,
            size: 20,
            color: Colors.white,
          ),
          Icon(
            Icons.list,
            size: 20,
            color: Colors.white,
          ),
        ],
        index: 1,
        animationDuration: Duration(milliseconds: 200),
        animationCurve: Curves.bounceInOut,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
