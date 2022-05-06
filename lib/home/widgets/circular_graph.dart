import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CircularGraph extends StatefulWidget {
  const CircularGraph({Key? key}) : super(key: key);

  @override
  _CircularGraphState createState() => _CircularGraphState();
}

class _CircularGraphState extends State<CircularGraph> {
  late List<TransData> _transData;

  @override
  void initState() {
    _transData = getTransData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            // color: Colors.black12,
          ),
          child: Center(
            child: SfCircularChart(
              palette: <Color>[
                Colors.red.shade300,
                Colors.green.shade300,
              ],
              series: <CircularSeries>[
                DoughnutSeries<TransData, String>(
                  dataSource: _transData,
                  xValueMapper: (TransData data, _) => data.transKind,
                  yValueMapper: (TransData data, _) => data.transAmount,
                  radius: '45',
                  innerRadius: '40',
                  dataLabelSettings: const DataLabelSettings(
                    isVisible: false,
                    textStyle: TextStyle(
                      fontSize: 8,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class TransData {
  TransData(
    this.transAmount,
    this.transKind,
  );
  final int transAmount;
  final String transKind;
}

List<TransData> getTransData() {
  final List<TransData> transData = [
    TransData(
      1800,
      'expense',
    ),
    TransData(
      5500,
      'income',
    ),
  ];
  return transData;
}
