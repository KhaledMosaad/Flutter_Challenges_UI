import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final double result;
  final String state;

  Result(this.result, this.state);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //appBar: AppBar(),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 350,
                height: 400,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: Colors.white,
                  elevation: 5,
                  child: Column(
                    children: <Widget>[
                      Text(
                        '$result',
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        state,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('any words'),
                      Spacer(),
                      Text('Your BMI is $result Calories/Day'),
                      SizedBox(
                        height: 50,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                child: FlatButton(
                  onPressed: () {},
                  child: Text('Ok'),
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
