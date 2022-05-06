import 'package:expense_app/home/widgets/balance_card.dart';
import 'package:expense_app/home/widgets/credit_bar.dart';
import 'package:expense_app/home/widgets/trans_list.dart';
import 'package:expense_app/home/widgets/transactions.dart';
import 'package:expense_app/main.dart';
import 'package:flutter/material.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(pagePadding),
          child: Column(
            children: [
              //logo
              const BalanceCard(
                currentBalance: '3,700',
                totalIncome: '5,500',
                totalExpense: '1800',
              ),
              Expanded(
                flex: 4,
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
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 25,
                child: Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.pink[300]),
                    onPressed: () {},
                    child: Text(
                      'Add Transaction',
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ),
              ),
              const CreditBar(),
            ],
          ),
        ),
      ),
    );
  }
}
