import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:muslim/model/weather.dart';
import 'package:muslim/theme/dark_theme_provider.dart';
import 'package:muslim/widget/value_tile.dart';
import '../utils/converters.dart';

/// Renders Weather Icon, current, min and max temperatures
class CurrentConditions extends StatelessWidget {
  final Weather weather;
  const CurrentConditions({Key? key, required this.weather}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    TemperatureUnit unit = TemperatureUnit.celsius;
    int currentTemp = weather.temperature!.as(unit).round();
    int maxTemp = weather.maxTemperature!.as(unit).round();
    int minTemp = weather.minTemperature!.as(unit).round();
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        const SizedBox(
          height: 20,
        ),
        NeumorphicIcon(
          weather.getIconData(),
          size: 80,
          style: NeumorphicStyle(
            color: ThemeColor.colorBackground(context),
            shadowLightColor: ThemeColor.shadowLight(context),
            shadowDarkColor: ThemeColor.shadowDark(context),
            depth: 3,
          ),
        ),
        const SizedBox(
          height: 0,
        ),
        NeumorphicText(
          '$currentTemp',
          textStyle: NeumorphicTextStyle(
            fontSize: 80,
            fontWeight: FontWeight.bold,
          ),
          style: NeumorphicStyle(
            color: ThemeColor.colorBackground(context),
            shadowLightColor: ThemeColor.shadowLight(context),
            shadowDarkColor: ThemeColor.shadowDark(context),
            depth: 3,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Neumorphic(
              style: NeumorphicStyle(
                color: ThemeColor.colorBackground(context),
                shadowLightColorEmboss: ThemeColor.shadowLight(context),
                shadowDarkColorEmboss: ThemeColor.shadowDark(context),
                depth: -3,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ValueTile("min", '$minTemp'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Center(
                child: Container(
                  width: 1,
                  height: 30,
                  color: ThemeColor.colorText(context).withAlpha(50),
                ),
              ),
            ),
            Neumorphic(
              style: NeumorphicStyle(
                color: ThemeColor.colorBackground(context),
                shadowLightColorEmboss: ThemeColor.shadowLight(context),
                shadowDarkColorEmboss: ThemeColor.shadowDark(context),
                depth: -3,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ValueTile("max", '$maxTemp'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
