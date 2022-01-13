import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:muslim/theme/dark_theme_provider.dart';

class BottomIcon extends StatelessWidget {
  final Function() onPressed;
  final IconData icon;
  final String title;
  const BottomIcon({
    Key? key,
    required this.onPressed,
    required this.icon,
    required this.title,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        NeumorphicButton(
          onPressed: onPressed,
          style: NeumorphicStyle(
            color: ThemeColor.colorBackground(context),
            shape: NeumorphicShape.convex,
            boxShape: const NeumorphicBoxShape.circle(),
            shadowLightColor: ThemeColor.shadowLight(context),
            shadowDarkColor: ThemeColor.shadowDark(context),
          ),
          padding: const EdgeInsets.all(12.0),
          child: Icon(
            icon,
            color: ThemeColor.colorPrimary(context),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 16, 8, 10),
          child: Text(
            title,
            style: TextStyle(
              color: ThemeColor.colorText(context),
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
