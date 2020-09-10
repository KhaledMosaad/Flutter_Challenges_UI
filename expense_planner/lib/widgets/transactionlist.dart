import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../modols/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  final Function deletedTransaction;
  TransactionList(this.transactions, this.deletedTransaction);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: transactions.length,
      itemBuilder: (ctx, index) {
        return Card(
          elevation: 5,
          margin: EdgeInsets.symmetric(
            vertical: 2,
            horizontal: 3,
          ),
          child: ListTile(
            leading: CircleAvatar(
              radius: 30,
              child: Padding(
                padding: EdgeInsets.all(7),
                child:
                    FittedBox(child: Text('\$ ${transactions[index].amount}')),
              ),
            ),
            title: Text('${transactions[index].title}',
                style: Theme.of(context).textTheme.title),
            subtitle: Text(
              DateFormat.yMMMd().format(transactions[index].date),
            ),
            trailing: MediaQuery.of(context).size.width >= 360
                ? FlatButton.icon(
                    icon: Icon(Icons.delete),
                    label: Text('Delete'),
                    textColor: Colors.red,
                    onPressed: () => deletedTransaction(transactions[index].id),)
                : IconButton(
                    icon: Icon(Icons.delete),
                    color: Colors.red,
                    onPressed: () => deletedTransaction(transactions[index].id),
                  ),
          ),
        );
      },
    );
  }
}
