// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class BalanceCard extends StatelessWidget {
  final String currentBalance;
  final String totalIncome;
  final String totalExpense;
  final double outPadding;
  final double innerPadding;

  const BalanceCard({
    required this.currentBalance,
    required this.totalIncome,
    required this.totalExpense,
    this.outPadding = 12,
    this.innerPadding = 8,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(outPadding),
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(innerPadding),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'CURRENT BALANCE',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 15,
                  ),
                ),
                Text(
                  currentBalance + ' ₪',
                  style: TextStyle(
                    color: Colors.pink[300],
                    fontSize: 30,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        const Icon(Icons.arrow_drop_up, color: Colors.green),
                        Text(
                          'Income',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          totalIncome + ' ₪',
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const Icon(Icons.arrow_drop_down, color: Colors.red),
                        Text(
                          'Expense',
                          style: TextStyle(
                              color: Colors.red[700],
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          totalExpense + ' ₪',
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
