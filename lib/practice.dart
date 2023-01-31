// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';
//
// class practice extends StatefulWidget {
//   const practice({Key? key}) : super(key: key);
//
//   @override
//   State<practice> createState() => _practiceState();
// }
//
// class _practiceState extends State<practice> {
//   late List<_ChartData> data;
//   late TooltipBehavior _tooltip;
//
//   @override
//   void initState() {
//     data = [
//       _ChartData('CHN', 12),
//       _ChartData('GER', 15),
//       _ChartData('RUS', 30),
//       _ChartData('BRZ', 6.4),
//       _ChartData('IND', 14)
//     ];
//     _tooltip = TooltipBehavior(enable: true);
//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Syncfusion Flutter chart'),
//         ),
//         body: SfCartesianChart(
//             primaryXAxis: CategoryAxis(),
//             primaryYAxis: NumericAxis(minimum: 0, maximum: 40, interval: 10),
//             tooltipBehavior: _tooltip,
//             series: <ChartSeries<_ChartData, String>>[
//               BarSeries<_ChartData, String>(
//                   dataSource: data,
//                   xValueMapper: (_ChartData data, _) => data.x,
//                   yValueMapper: (_ChartData data, _) => data.y,
//                   name: 'Gold',
//                   color: Colors.amberAccent)
//             ]));
//   }
// }
//
// class _ChartData {
//   _ChartData(this.x, this.y);
//
//   final String x;
//   final double y;
// }
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class practice extends StatefulWidget {
  const practice({Key? key}) : super(key: key);

  @override
  State<practice> createState() => _practiceState();
}

class _practiceState extends State<practice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SafeArea(
            child: Column(
              children: <Widget>[
                Container(
                  child: Center(
                    child: Text(
                      'First widget',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  color: Colors.blue,
                  height: 50,
                  width: 200,
                ),
                Expanded(
                  child: Container(
                    child: Center(
                      child: ExpansionTile(title:Text('data'),
                      children: [
                        Text('data'),
                        Text('data'),
                        Text('data'),
                        Text('data'),
                        Text('data'),
                        Text('data'),
                        Text('data'),
                        Text('data'),
                        Text('data'),
                        Text('data'),
                      ],)
                    ),
                    color: Colors.amber,
                    width: 200,
                  ),
                ),
                Container(
                  child: Center(
                    child: ExpansionTile(title:Text('data'))
                  ),
                  color: Colors.orange,
                  height: 100,
                  width: 200,
                ),
              ],
            ),
          )),
    );
  }
}

