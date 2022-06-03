import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:learn_tamil/Components/Charts/BarChart/learnedSeries.dart';


class LearnersChart extends StatelessWidget {
  final List<LearnedSeries> data;

  LearnersChart({required this.data});

  @override
  Widget build(BuildContext context) {
    
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    List<charts.Series<LearnedSeries, String>> series = [
      charts.Series(
        id: "Learned",
        data: data,
        domainFn: (LearnedSeries series, _) => series.month,
        measureFn: (LearnedSeries series, _) => series.learned,
        colorFn: (LearnedSeries series, _) => series.barColor
      )
    ];
    return Container(
      width: screenWidth,
      height: 200,
      // padding: EdgeInsets.all(20),
      child: Card(
        child: Expanded(
          child: charts.BarChart(series, animate: true),
        ),
      ),
    );
  }
}

