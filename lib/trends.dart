import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

// import  'package'
class UserData {
  String day;
  double weight;
  charts.Color barColor;
  UserData(
      {@required this.day, @required this.weight, @required this.barColor});
}

final List<UserData> data = [
  UserData(
      day: 'Jan 5',
      weight: 60.1,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue)),
  UserData(
      day: 'Jan 6',
      weight: 60.4,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue)),
  UserData(
      day: 'Jan 7',
      weight: 60.3,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue)),
  UserData(
      day: 'Jan 8',
      weight: 57.3,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue)),
  UserData(
      day: 'Jan 9',
      weight: 57.5,
      barColor: charts.ColorUtil.fromDartColor(Colors.purple)),
  UserData(
      day: 'Jan 10',
      weight: 59.5,
      barColor: charts.ColorUtil.fromDartColor(Colors.purple)),
  UserData(
      day: 'Jan 11',
      weight: 58.0,
      barColor: charts.ColorUtil.fromDartColor(Colors.purple)),
];
_getSeriesData() {
  List<charts.Series<UserData, String>> series = [
    charts.Series(
        id: 'weight',
        data: data,
        domainFn: (UserData series, _) => series.day.toString(),
        measureFn: (UserData series, _) => series.weight,
        colorFn: (UserData series, _) => series.barColor)
  ];
  return series;
}

class Trends extends StatelessWidget {
  // final String name;
  // TextEditingController nameController = TextEditingController();
  // TextEditingController passwordController = TextEditingController();
  // bool _disableButton = false;

  // handleClick(name) {
  //   print('$name clicked');
  // }

  //class constructor
  // Login(this.name);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Expanded(
        child: charts.BarChart(
          _getSeriesData(),
          animate: true,
          domainAxis: charts.OrdinalAxisSpec(
              renderSpec: charts.SmallTickRendererSpec(labelRotation: 60)),
        ),
      ),
    );
  }
}
