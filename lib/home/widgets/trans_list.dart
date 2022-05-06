// ignore_for_file: use_key_in_widget_constructors

import 'package:expense_app/home/widgets/transactions.dart';
import 'package:flutter/material.dart';

class TransList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.75,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 30.0),
          child: Center(
            child: ListView(
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              children: const [
                TransactionsData(
                  amount: '500',
                  name: 'Food',
                  expOrInc: 'expense',
                ),
                TransactionsData(
                  amount: '5500',
                  name: 'Salary',
                  expOrInc: 'income',
                ),
                TransactionsData(
                  amount: '1000',
                  name: 'Car Expenses',
                  expOrInc: 'expense',
                ),
                TransactionsData(
                  amount: '300',
                  name: '1',
                  expOrInc: 'expense',
                ),
                TransactionsData(
                  amount: '300',
                  name: '2',
                  expOrInc: 'expense',
                ),
                TransactionsData(
                  amount: '300',
                  name: '3',
                  expOrInc: 'expense',
                ),
                TransactionsData(
                  amount: '300',
                  name: '4',
                  expOrInc: 'expense',
                ),
                TransactionsData(
                  amount: '300',
                  name: '5',
                  expOrInc: 'expense',
                ),
                TransactionsData(
                  amount: '300',
                  name: '6',
                  expOrInc: 'expense',
                ),
                TransactionsData(
                  amount: '300',
                  name: '7',
                  expOrInc: 'expense',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
