import 'package:card_swiper/card_swiper.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:muslim/model/weather.dart';
import 'package:muslim/theme/dark_theme_provider.dart';
import 'package:muslim/widget/current_conditions.dart';
import 'package:muslim/widget/empty_widget.dart';
import 'package:muslim/widget/temperature_line_chart.dart';

class WeatherSwipePager extends StatelessWidget {
  const WeatherSwipePager({
    Key? key,
    required this.weather,
  }) : super(key: key);
  final Weather weather;
  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
        shape: NeumorphicShape.flat,
        boxShape: NeumorphicBoxShape.roundRect(
          const BorderRadius.all(Radius.circular(28)),
        ),
        color: ThemeColor.colorBackground(context),
        shadowLightColorEmboss: ThemeColor.shadowLight(context),
        shadowDarkColorEmboss: ThemeColor.shadowDark(context),
        depth: -3,
      ),
      margin: const EdgeInsets.fromLTRB(16, 0, 16, 0),
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 350,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(24)),
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              ThemeColor.colorPrimary(context),
              ThemeColor.colorAccent(context),
            ],
          ),
        ),
        child: Swiper(
          itemCount: 2,
          index: 0,
          itemBuilder: (context, index) {
            if (index == 0) {
              return CurrentConditions(
                weather: weather,
              );
            } else if (index == 1) {
              return TemperatureLineChart(
                weather.forecast!,
                animate: true,
              );
            }
            return const EmptyWidget();
          },
          pagination: SwiperPagination(
            margin: const EdgeInsets.fromLTRB(5, 0, 5, 32),
            builder: DotSwiperPaginationBuilder(
              size: 5,
              activeSize: 8,
              color: ThemeColor.colorBackground(context).withOpacity(0.4),
              activeColor: ThemeColor.colorBackground(context),
            ),
          ),
        ),
      ),
    );
  }
}
