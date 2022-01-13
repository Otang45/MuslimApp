import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:muslim/theme/dark_theme_provider.dart';

class Circle extends StatelessWidget {
  final String title;
  final double size;
  final double fontSize;
  final bool visibility;
  const Circle({
    Key? key,
    required this.visibility,
    required this.title,
    required this.size,
    required this.fontSize,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
        shape: NeumorphicShape.flat,
        boxShape: const NeumorphicBoxShape.circle(),
        color: ThemeColor.colorBackground(context),
        shadowLightColor: ThemeColor.shadowLight(context),
        shadowDarkColor: ThemeColor.shadowDark(context),
        depth: 4,
      ),
      child: Container(
        height: size,
        width: size,
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              ThemeColor.colorPrimary(context),
              ThemeColor.colorAccent(context),
            ],
          ),
        ),
        child: Neumorphic(
          padding: const EdgeInsets.all(4),
          style: NeumorphicStyle(
            shape: NeumorphicShape.flat,
            boxShape: const NeumorphicBoxShape.circle(),
            color: ThemeColor.colorBackground(context),
            shadowLightColorEmboss: ThemeColor.shadowLight(context),
            shadowDarkColorEmboss: ThemeColor.shadowDark(context),
            depth: -3,
          ),
          child: Neumorphic(
            style: NeumorphicStyle(
              shape: NeumorphicShape.flat,
              boxShape: const NeumorphicBoxShape.circle(),
              color: visibility == true
                  ? ThemeColor.colorPrimary(context)
                  : ThemeColor.colorBackground(context),
              shadowLightColor: ThemeColor.shadowLight(context),
              shadowDarkColor: ThemeColor.shadowDark(context),
              depth: visibility == true ? 3 : 0,
            ),
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                  color: visibility == true
                      ? ThemeColor.white
                      : ThemeColor.colorText(context),
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
