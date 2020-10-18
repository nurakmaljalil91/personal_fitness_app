import 'package:flutter/material.dart';
import './add_plan.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personal Fitness App'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'Home Screen',
              style: TextStyle(fontSize: 50),
            ),
            RaisedButton(
              child: Text('Go to Plan'),
              onPressed: () {
                Navigator.of(context).pushNamed('/addPlanScreen',
                    arguments: 'Hello There from first page');
              },
            )
          ],
        ),
      ),
    );
  }
}
