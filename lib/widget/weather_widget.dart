import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:intl/intl.dart';
import 'package:muslim/model/weather.dart';
import 'package:muslim/theme/dark_theme_provider.dart';
import 'package:muslim/widget/forecast_horizontal_widget.dart';
import 'package:muslim/widget/value_tile.dart';
import 'package:muslim/widget/weather_swipe_pager.dart';

class WeatherWidget extends StatelessWidget {
  final Weather weather;
  const WeatherWidget({Key? key, required this.weather}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16,
        right: 16,
        top: MediaQuery.of(context).padding.top +
            AppBar().preferredSize.height +
            20,
        bottom: MediaQuery.of(context).padding.bottom + 10,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Spacer(
            flex: 1,
          ),
          WeatherSwipePager(weather: weather),
          const SizedBox(height: 20),
          NeumorphicText(
            weather.cityName!.toUpperCase(),
            textStyle: NeumorphicTextStyle(
              fontSize: 35,
              letterSpacing: 5,
              fontWeight: FontWeight.bold,
            ),
            style: NeumorphicStyle(
              color: ThemeColor.colorPrimary(context),
              shadowLightColor: ThemeColor.shadowLight(context),
              shadowDarkColor: ThemeColor.shadowDark(context),
              depth: 3,
            ),
          ),
          Text(
            weather.description!.toUpperCase(),
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: ThemeColor.colorText(context),
            ),
          ),
          const SizedBox(height: 20),
          Neumorphic(
            style: NeumorphicStyle(
              shape: NeumorphicShape.flat,
              boxShape: NeumorphicBoxShape.roundRect(
                const BorderRadius.all(Radius.circular(12)),
              ),
              color: ThemeColor.colorBackground(context),
              shadowLightColor: ThemeColor.shadowLight(context),
              shadowDarkColor: ThemeColor.shadowDark(context),
              depth: 3,
            ),
            margin: const EdgeInsets.fromLTRB(16, 0, 16, 8),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ValueTile(
                    'Kec. Angin',
                    '${weather.windSpeed} m/s',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12, right: 12),
                    child: Center(
                      child: Container(
                        width: 1,
                        height: 30,
                        color: ThemeColor.colorText(context).withAlpha(50),
                      ),
                    ),
                  ),
                  ValueTile(
                    "Terbit",
                    DateFormat('HH:mm').format(
                      DateTime.fromMillisecondsSinceEpoch(
                          weather.sunrise! * 1000),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12, right: 12),
                    child: Center(
                      child: Container(
                        width: 1,
                        height: 30,
                        color: ThemeColor.colorText(context).withAlpha(50),
                      ),
                    ),
                  ),
                  ValueTile(
                    "Terbenam",
                    DateFormat('HH:mm').format(
                      DateTime.fromMillisecondsSinceEpoch(
                          weather.sunset! * 1000),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12, right: 12),
                    child: Center(
                      child: Container(
                        width: 1,
                        height: 30,
                        color: ThemeColor.colorText(context).withAlpha(50),
                      ),
                    ),
                  ),
                  ValueTile(
                    "Lembap",
                    '${weather.humidity}%',
                  ),
                ],
              ),
            ),
          ),
          ForecastHorizontal(weathers: weather.forecast!),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
