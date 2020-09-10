import 'package:flutter/material.dart';

class Info extends StatefulWidget {
  String name;
  double amount;
  Info(this.name, this.amount);

  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 200,
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          color: Colors.white,
          elevation: 5,
          child: Column(
            children: <Widget>[
              Text('${widget.name}'),
              Spacer(),
              Text(
                '${widget.amount}',
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Row(
                children: <Widget>[
                  IconButton(
                    onPressed: () {
                      if (widget.amount > 0) {
                        setState(() {
                          widget.amount--;
                        });
                      }
                    },
                    icon: Icon(Icons.remove),
                    color: Colors.blue,
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        widget.amount++;
                      });
                    },
                    icon: Icon(Icons.add),
                    color: Colors.blue,
                  ),
                ],
              )
            ],
          )),
    );
  }
}
