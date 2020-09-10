import 'package:flutter/material.dart';
import 'package:test_app/screen/result.dart';

class Tbotton extends StatelessWidget {
  final double result;
  Tbotton(this.result);
  //double result;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Card(
        child: IconButton(
          icon: Icon(Icons.skip_next),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (_){
              return Result(result, 'Normal');
            }));
          },
          color: Colors.blue,
        ),
      ),
    );
  }
}
