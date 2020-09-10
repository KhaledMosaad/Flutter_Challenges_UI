import 'package:flutter/material.dart';

class Type extends StatefulWidget {
  bool isSwitch=false;
  @override
  _TypeState createState() => _TypeState();
}

class _TypeState extends State<Type> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: Card(
         shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            color: Colors.white,
            elevation: 5,
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 145,
                ),
                Text('Male'),
                Switch(
                  
                    value: widget.isSwitch,
                    onChanged: (bool isOn) {
                      setState(() {
                        widget.isSwitch = isOn;
                      });
                    },
                    activeColor: Colors.white,
                    activeTrackColor: Colors.pink,
                    inactiveThumbColor: Colors.blue,
                  ),
                Text('Female'),
              ],
            ),
        
      ),
    );
  }
}