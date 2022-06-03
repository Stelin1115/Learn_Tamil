import 'package:flutter/foundation.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class LearnedSeries {
  final String month;
  final int learned;
  final charts.Color barColor;

  LearnedSeries(
    {
      required this.month,
      required this.learned,
      required this.barColor
    }
  );
}