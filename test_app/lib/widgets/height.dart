import 'package:flutter/material.dart';

class Height extends StatefulWidget {
  double height=1.5;
  double get h {
  return height;
}
  @override
  _HeightState createState() => _HeightState();
}

class _HeightState extends State<Height> {
  @override
  Widget build(BuildContext context) {
    return Card(
       shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          color: Colors.white,
          elevation: 5,
      child: Column(
        children: <Widget>[
          Text('Height(M)'),
          Container(
            width: 100,
            height: 50,
            child: Text(
              '${widget.height}',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
          ),
          Slider(
            value: widget.height.toDouble(),
            onChanged: (double newVal){
              setState(() {
                widget.height=newVal;
              });
            },
            // divisions: 30,
            min: 0.0,
            max: 3.0,
            activeColor: Colors.blue,
            inactiveColor: Colors.white,
          )
        ],
      ),
    );
  }
}
