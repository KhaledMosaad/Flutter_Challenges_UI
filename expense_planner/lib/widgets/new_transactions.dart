import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NewTransactions extends StatefulWidget {
  final Function addtx;

  NewTransactions(this.addtx);

  @override
  _NewTransactionsState createState() => _NewTransactionsState();
}

class _NewTransactionsState extends State<NewTransactions> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();
  DateTime _selectedDate;

  void _onpress() {
    if(_amountController.text.isEmpty)
    {
      return;
    }
    final enteredtitle = _titleController.text;
    final enteredamount = double.parse(_amountController.text);
    if (enteredtitle.isEmpty ||
        enteredamount.toString().isEmpty ||
        enteredamount <= 0 ||
        _selectedDate == null) {
      return;
    }
    widget.addtx(enteredtitle, enteredamount,_selectedDate);
    Navigator.of(context).pop();
  }

  void _pressentDate() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime.now(),
    ).then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      setState(() {
        _selectedDate = pickedDate;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: 'title',
              ),
              controller: _titleController,
              onSubmitted: (_) => _onpress(),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'price',
              ),
              // onChanged: (val) => amountInput = val,
              controller: _amountController,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => _onpress(),
            ),
            Container(
              height: 170,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(_selectedDate == null
                        ? 'Choose the Date'
                        : DateFormat.yMd().format(_selectedDate)),
                  ),
                  FlatButton(
                    onPressed: _pressentDate,
                    child: Text(
                      'Date',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    textColor: Theme.of(context).primaryColor,
                  ),
                ],
              ),
            ),
            RaisedButton(
              onPressed: _onpress,
              child: Text(
                'Add Transaction',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              color: Theme.of(context).primaryColor,
              textColor: Theme.of(context).textTheme.button.color,
            )
          ],
        ),
      ),
    );
  }
}
