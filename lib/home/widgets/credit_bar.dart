import 'package:flutter/material.dart';

class CreditBar extends StatelessWidget {
  const CreditBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: 15.0, right: 15.0, top: 5.0, bottom: 10.0),
      child: Container(
        height: 20,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'EXPENSE',
              style: TextStyle(
                  color: Colors.white54,
                  fontSize: 12,
                  fontWeight: FontWeight.w300),
            ),
            Text(
              'APP -',
              style: TextStyle(
                  color: Colors.white54,
                  fontSize: 12,
                  fontWeight: FontWeight.w800),
            ),
            Text(
              ' Created by',
              style: TextStyle(color: Colors.black45, fontSize: 12),
            ),
            Text(
              ' Meir',
              style: TextStyle(
                  color: Colors.white38,
                  fontSize: 12,
                  fontWeight: FontWeight.w800),
            ),
          ],
        ),
        decoration: BoxDecoration(
            color: Colors.grey[500], borderRadius: BorderRadius.circular(8.5)),
      ),
    );
  }
}
