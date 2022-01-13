import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:muslim/main.dart';
import 'package:muslim/theme/dark_theme_provider.dart';
import 'package:muslim/baseurl/base_app.dart';

class LastPrayer extends StatelessWidget {
  final String title;
  const LastPrayer({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
        shape: NeumorphicShape.flat,
        boxShape: NeumorphicBoxShape.roundRect(
            const BorderRadius.all(Radius.circular(12))),
        color: ThemeColor.colorBackground(context),
        shadowLightColor: ThemeColor.shadowLight(context),
        shadowDarkColor: ThemeColor.shadowDark(context),
        depth: 4,
      ),
      child: Container(
        height: 60,
        width: double.infinity,
        padding: const EdgeInsets.all(4),
        color: ThemeColor.colorBackground(context),
        child: Neumorphic(
          padding: const EdgeInsets.only(left: 16, right: 16),
          style: NeumorphicStyle(
            shape: NeumorphicShape.flat,
            boxShape: NeumorphicBoxShape.roundRect(
                const BorderRadius.all(Radius.circular(10))),
            color: ThemeColor.colorPrimary(context),
            shadowLightColorEmboss: ThemeColor.shadowLight(context),
            shadowDarkColorEmboss: ThemeColor.shadowDark(context),
            depth: -3,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: HexColor('FFFFFF'),
                  fontSize: Size.size18,
                ),
              ),
              NeumorphicIcon(
                Icons.check_circle_rounded,
                size: 24,
                style: NeumorphicStyle(
                  color: ThemeColor.colorBackground(context),
                  shadowLightColor: ThemeColor.shadowLight(context),
                  shadowDarkColor: ThemeColor.shadowDark(context),
                  depth: 3,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
