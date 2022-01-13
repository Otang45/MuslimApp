import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:intl/intl.dart';
import 'package:muslim/helper/remove_glow.dart';
import 'package:muslim/model/weather.dart';
import 'package:muslim/theme/dark_theme_provider.dart';
import 'package:muslim/utils/converters.dart';
import 'package:muslim/widget/value_tile.dart';

/// Renders a horizontal scrolling list of weather conditions
/// Used to show forecast
/// Shows DateTime, Weather Condition icon and Temperature
class ForecastHorizontal extends StatelessWidget {
  const ForecastHorizontal({
    Key? key,
    required this.weathers,
  }) : super(key: key);
  final List<Weather> weathers;
  @override
  Widget build(BuildContext context) {
    TemperatureUnit unit = TemperatureUnit.celsius;
    return Neumorphic(
      style: NeumorphicStyle(
        shape: NeumorphicShape.flat,
        boxShape: NeumorphicBoxShape.roundRect(
          const BorderRadius.all(Radius.circular(20)),
        ),
        color: ThemeColor.colorBackground(context),
        shadowLightColorEmboss: ThemeColor.shadowLight(context),
        shadowDarkColorEmboss: ThemeColor.shadowDark(context),
        depth: -4,
      ),
      margin: const EdgeInsets.only(top: 10, left: 8, right: 8),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: SizedBox(
          height: 130,
          child: ScrollConfiguration(
            behavior: RemoveGlow(),
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemCount: weathers.length,
              separatorBuilder: (context, index) => const Divider(
                height: 0,
              ),
              itemBuilder: (context, index) {
                final item = weathers[index];
                return Center(
                  child: ValueTile2(
                    DateFormat('EEEE\nHH:mm').format(
                        DateTime.fromMillisecondsSinceEpoch(item.time! * 1000)),
                    '${item.temperature!.as(unit).round()}',
                    iconData: item.getIconData(),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
