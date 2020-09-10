import 'package:expense_planner/modols/transaction.dart';
import 'package:expense_planner/widgets/chart_bar.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

class Chart extends StatelessWidget {
  final List<Transaction> recentTransaction;
  Chart(this.recentTransaction);
  List<Map<String, Object>> get groupTransactionValues {
    return List.generate(7, (index) {
      final weekday = DateTime.now().subtract(
        Duration(days: index),
      );

      double sum=0.0;
      for (int i = 0; i < recentTransaction.length; i++) {
        if (recentTransaction[i].date.day == weekday.day &&
            recentTransaction[i].date.month == weekday.month &&
            recentTransaction[i].date.year == weekday.year) {
              sum+=recentTransaction[i].amount;
            }
      }
      return {'day': DateFormat.E().format(weekday).substring(0,1), 'amount': sum};
    }).reversed.toList();
  }
  double get totalSpending{
    return groupTransactionValues.fold(0.0, (sum,item){
      return sum +item['amount'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      margin: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: groupTransactionValues.map((data){
          return Flexible(
            fit: FlexFit.tight,
          child: ChartBar(data['day'],
          data['amount'],
          totalSpending==0.0 ? 0.0 :(data['amount'] as double )/totalSpending ));  
        }).toList() 
      ),
    );
  }
}
