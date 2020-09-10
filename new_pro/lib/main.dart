import 'package:flutter/material.dart';

void main() => runApp(MainScreen());

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          
        ),
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              Text('Settings'),
            ],
          ),
        ),
      ),
    );
  }
}
