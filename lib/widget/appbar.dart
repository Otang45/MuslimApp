import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:muslim/theme/dark_theme_provider.dart';

class AppBarz extends StatelessWidget {
  final Function() onClickLeft;
  final Function() onClickRight;
  final String title;
  final String subTitle;
  final IconData iconLeft;
  final IconData iconRight;
  const AppBarz({
    Key? key,
    required this.onClickLeft,
    required this.onClickRight,
    required this.title,
    required this.subTitle,
    required this.iconLeft,
    required this.iconRight,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top + 10,
        left: 32,
        right: 32,
        bottom: 12,
      ),
      height: AppBar().preferredSize.height +
          MediaQuery.of(context).padding.top +
          12,
      decoration: BoxDecoration(
        color: ThemeColor.colorBackground(context),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          NeumorphicButton(
            onPressed: onClickLeft,
            style: NeumorphicStyle(
              color: ThemeColor.colorBackground(context),
              shape: NeumorphicShape.convex,
              boxShape: const NeumorphicBoxShape.circle(),
              shadowLightColor: ThemeColor.shadowLight(context),
              shadowDarkColor: ThemeColor.shadowDark(context),
            ),
            padding: const EdgeInsets.all(12.0),
            child: Icon(
              iconLeft,
              color: ThemeColor.colorText(context),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 8,
                right: 8,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                    child: Text(
                      title,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        letterSpacing: 1.2,
                        color: ThemeColor.colorText(context),
                      ),
                    ),
                  ),
                  Text(
                    subTitle,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      letterSpacing: 1.2,
                      color: ThemeColor.colorAccent(context),
                    ),
                  ),
                ],
              ),
            ),
          ),
          NeumorphicButton(
            onPressed: onClickRight,
            style: NeumorphicStyle(
              color: ThemeColor.colorBackground(context),
              shape: NeumorphicShape.convex,
              boxShape: const NeumorphicBoxShape.circle(),
              shadowLightColor: ThemeColor.shadowLight(context),
              shadowDarkColor: ThemeColor.shadowDark(context),
            ),
            padding: const EdgeInsets.all(12.0),
            child: Icon(
              iconRight,
              color: ThemeColor.colorText(context),
            ),
          ),
        ],
      ),
    );
  }
}
