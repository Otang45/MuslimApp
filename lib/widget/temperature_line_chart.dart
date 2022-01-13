import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:muslim/model/weather.dart';
import 'package:muslim/utils/converters.dart';

/// Renders a line chart from forecast data
/// x axis - date
/// y axis - temperature
class TemperatureLineChart extends StatelessWidget {
  final List<Weather> weathers;
  final bool animate;
  const TemperatureLineChart(this.weathers, {Key? key, required this.animate})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 10, 0, 60),
      child: charts.TimeSeriesChart(
        [
          charts.Series<Weather, DateTime>(
            id: 'Temperature',
            colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
            domainFn: (Weather weather, _) =>
                DateTime.fromMillisecondsSinceEpoch(weather.time! * 1000),
            measureFn: (Weather weather, _) =>
                weather.temperature!.as(TemperatureUnit.celsius),
            data: weathers,
          )
        ],
        animate: animate,
        animationDuration: const Duration(milliseconds: 500),
        primaryMeasureAxis: const charts.NumericAxisSpec(
          tickProviderSpec: charts.BasicNumericTickProviderSpec(
            zeroBound: false,
          ),
        ),
      ),
    );
  }
}
