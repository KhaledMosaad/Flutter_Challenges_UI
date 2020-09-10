import 'package:flutter/material.dart';
import 'package:test_app/widgets/e_bottom.dart';
import 'package:test_app/widgets/height.dart';
import './widgets/info.dart';
import './widgets/type.dart';

void main() => runApp(MainScreen());

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  double _age = 0;
  double _weight = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ANY TITLE'),
        ),
        body: Container(
          color: Colors.grey[300],
          child: Column(
            children: <Widget>[
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(child: Info('Age', _age)),
                    //Spacer(),
                    Expanded(child: Info('Weight', _weight)),
                  ],
                ),
              ),
              Expanded(child: Height()),
              //Spacer(),
              Expanded(child: Type()),
              Expanded(
                  child:
                      Tbotton(_weight / (Height().height * Height().height))),
            ],
          ),
        ),
      ),
    );
  }
}
