import 'package:flutter/material.dart';

class TransactionsData extends StatelessWidget {
  
  final String name;
  final String amount;
  final String expOrInc;

  // ignore: use_key_in_widget_constructors
  const TransactionsData({
    required this.name,
    required this.amount,
    required this.expOrInc,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 5,
        left: 15,
        right: 15,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(
          15,
        ),
        child: Container(
          padding: const EdgeInsets.all(
            8.0,
          ),
          color: Colors.grey[400],
          height: 40,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[500],
                      ),
                      child: Center(
                        child: Icon(
                          (expOrInc == 'expense'
                              ? Icons.keyboard_arrow_down
                              : Icons.keyboard_arrow_up),
                          color: (expOrInc == 'expense'
                              ? Colors.red[100]
                              : Colors.green[100]),
                          size: 15,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      name,
                    ),
                  ],
                ),
                Text(
                  (expOrInc == 'expense' ? '-' : '+') + amount + '₪',
                  style: TextStyle(
                    color: (expOrInc == 'expense'
                        ? Colors.red[700]
                        : Colors.green[700]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
