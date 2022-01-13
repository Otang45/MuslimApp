import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:muslim/baseurl/base_app.dart';
import 'package:muslim/baseurl/base_asset.dart';
import 'package:muslim/dialog/dialog_profil.dart';
import 'package:muslim/helper/remove_glow.dart';
import 'package:muslim/theme/dark_theme_provider.dart';
import 'package:muslim/widget/appbar.dart';
import 'package:provider/provider.dart';

class PageSettings extends StatefulWidget {
  const PageSettings({Key? key}) : super(key: key);
  @override
  _PageSettingsState createState() => _PageSettingsState();
}

class _PageSettingsState extends State<PageSettings> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: ThemeColor.colorBackground(context),
        statusBarBrightness: ThemeColor.brightness(context),
        statusBarIconBrightness: ThemeColor.brightness(context),
        systemNavigationBarColor: ThemeColor.colorBackground(context),
        systemNavigationBarIconBrightness: ThemeColor.brightness(context),
      ),
    );
    final themeChange = Provider.of<DarkThemeProvider>(context);
    return Scaffold(
      backgroundColor: ThemeColor.colorBackground(context),
      body: Column(
        children: [
          AppBarz(
            onClickLeft: () {
              Navigator.pop(context);
            },
            onClickRight: () {},
            title: 'Settings',
            subTitle: Func.getTime(Format.time_2),
            iconLeft: Icons.arrow_back,
            iconRight: Icons.search,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 16,
                top: 0,
                right: 16,
                bottom: 16,
              ),
              child: ScrollConfiguration(
                behavior: RemoveGlow(),
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: <Widget>[
                    Neumorphic(
                      padding: const EdgeInsets.all(6),
                      style: NeumorphicStyle(
                        color: ThemeColor.colorBackground(context),
                        shadowLightColorEmboss: ThemeColor.shadowLight(context),
                        shadowDarkColorEmboss: ThemeColor.shadowDark(context),
                        boxShape: NeumorphicBoxShape.roundRect(
                          const BorderRadius.all(Radius.circular(24)),
                        ),
                        depth: -3,
                      ),
                      child: Container(
                        height: 75,
                        decoration: BoxDecoration(
                          color: ThemeColor.colorPrimary(context),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20),
                          ),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              ThemeColor.colorAccent(context),
                              ThemeColor.colorPrimary(context),
                            ],
                          ),
                        ),
                        child: InkWell(
                          onTap: () => showDialog(
                              context: context,
                              builder: (context) => const DialogProfil()),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 45,
                                height: 45,
                                margin: const EdgeInsets.only(
                                  right: 16,
                                  left: 16,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.teal,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(50)),
                                  image: DecorationImage(
                                    image: AssetImage(BaseAsset.ppProfil),
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(0),
                                    child: Text(
                                      'Dicky Zulkarnaen',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Text(
                                      'dikiotang@gmail.com',
                                      style: TextStyle(
                                        color:
                                            ThemeColor.colorBackground(context),
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Themes',
                        style: TextStyle(
                          fontSize: 18,
                          color: ThemeColor.colorText(context),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Neumorphic(
                      style: NeumorphicStyle(
                        color: ThemeColor.colorBackground(context),
                        shadowLightColor: ThemeColor.shadowLight(context),
                        shadowDarkColor: ThemeColor.shadowDark(context),
                        boxShape: NeumorphicBoxShape.roundRect(
                          const BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16),
                          ),
                        ),
                        depth: 2,
                      ),
                      child: SizedBox(
                        height: 48,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: NeumorphicIcon(
                                CupertinoIcons.moon,
                                size: 26,
                                style: NeumorphicStyle(
                                  color: ThemeColor.colorPrimary(context),
                                  shadowLightColor:
                                      ThemeColor.shadowLight(context),
                                  shadowDarkColor:
                                      ThemeColor.shadowDark(context),
                                  depth: 2,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                              ),
                              child: Text(
                                'Dark Theme',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: ThemeColor.colorText(context),
                                ),
                              ),
                            ),
                            const Spacer(
                              flex: 1,
                            ),
                            Transform.scale(
                              scale: 0.6,
                              child: NeumorphicSwitch(
                                style: NeumorphicSwitchStyle(
                                  thumbBorder: NeumorphicBorder(
                                    color: ThemeColor.colorPrimary(context),
                                    width: 2,
                                  ),
                                  inactiveTrackColor:
                                      ThemeColor.colorBackground(context),
                                  inactiveThumbColor:
                                      ThemeColor.colorBackground(context),
                                  activeThumbColor:
                                      ThemeColor.colorBackground(context),
                                  activeTrackColor:
                                      ThemeColor.colorPrimary(context),
                                  trackDepth: -3,
                                  thumbDepth: 3,
                                ),
                                value: themeChange.darkTheme,
                                onChanged: (value) =>
                                    themeChange.darkTheme = value,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Neumorphic(
                      style: NeumorphicStyle(
                        color: ThemeColor.colorBackground(context),
                        shadowLightColor: ThemeColor.shadowLight(context),
                        shadowDarkColor: ThemeColor.shadowDark(context),
                        boxShape: NeumorphicBoxShape.roundRect(
                          const BorderRadius.only(
                            topLeft: Radius.circular(0),
                            topRight: Radius.circular(0),
                            bottomLeft: Radius.circular(0),
                            bottomRight: Radius.circular(0),
                          ),
                        ),
                        depth: 2,
                      ),
                      child: SizedBox(
                        height: 48,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: NeumorphicIcon(
                                CupertinoIcons.color_filter,
                                size: 28,
                                style: NeumorphicStyle(
                                  color: ThemeColor.colorPrimary(context),
                                  shadowLightColor:
                                      ThemeColor.shadowLight(context),
                                  shadowDarkColor:
                                      ThemeColor.shadowDark(context),
                                  depth: 2,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                              ),
                              child: Text(
                                'Color Primary',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: ThemeColor.colorText(context),
                                ),
                              ),
                            ),
                            const Spacer(
                              flex: 1,
                            ),
                            InkWell(
                              onTap: () {
                                themeChange.colorPrimary = 0;
                              },
                              child: Neumorphic(
                                style: NeumorphicStyle(
                                  color: ThemeColor.pink,
                                  shadowLightColorEmboss:
                                      ThemeColor.shadowLight(context),
                                  shadowDarkColorEmboss:
                                      ThemeColor.shadowDark(context),
                                  boxShape: const NeumorphicBoxShape.circle(),
                                  depth: -3,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.check,
                                    size: 16,
                                    color: themeChange.colorPrimary == 0
                                        ? Colors.white
                                        : themeChange.colorPrimary == 1
                                            ? Colors.transparent
                                            : themeChange.colorPrimary == 2
                                                ? Colors.transparent
                                                : Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            InkWell(
                              onTap: () {
                                themeChange.colorPrimary = 1;
                              },
                              child: Neumorphic(
                                style: NeumorphicStyle(
                                  color: ThemeColor.darkTeal,
                                  shadowLightColorEmboss:
                                      ThemeColor.shadowLight(context),
                                  shadowDarkColorEmboss:
                                      ThemeColor.shadowDark(context),
                                  boxShape: const NeumorphicBoxShape.circle(),
                                  depth: -3,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.check,
                                    size: 16,
                                    color: themeChange.colorPrimary == 0
                                        ? Colors.transparent
                                        : themeChange.colorPrimary == 1
                                            ? Colors.white
                                            : themeChange.colorPrimary == 2
                                                ? Colors.transparent
                                                : Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            InkWell(
                              onTap: () {
                                themeChange.colorPrimary = 2;
                              },
                              child: Neumorphic(
                                style: NeumorphicStyle(
                                  color: ThemeColor.darkBlue,
                                  shadowLightColorEmboss:
                                      ThemeColor.shadowLight(context),
                                  shadowDarkColorEmboss:
                                      ThemeColor.shadowDark(context),
                                  boxShape: const NeumorphicBoxShape.circle(),
                                  depth: -3,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.check,
                                    size: 16,
                                    color: themeChange.colorPrimary == 0
                                        ? Colors.transparent
                                        : themeChange.colorPrimary == 1
                                            ? Colors.transparent
                                            : themeChange.colorPrimary == 2
                                                ? Colors.white
                                                : Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Neumorphic(
                      style: NeumorphicStyle(
                        color: ThemeColor.colorBackground(context),
                        shadowLightColor: ThemeColor.shadowLight(context),
                        shadowDarkColor: ThemeColor.shadowDark(context),
                        boxShape: NeumorphicBoxShape.roundRect(
                          const BorderRadius.only(
                            bottomLeft: Radius.circular(16),
                            bottomRight: Radius.circular(16),
                          ),
                        ),
                        depth: 2,
                      ),
                      child: SizedBox(
                        height: 48,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: NeumorphicIcon(
                                CupertinoIcons.color_filter,
                                size: 28,
                                style: NeumorphicStyle(
                                  color: ThemeColor.colorPrimary(context),
                                  shadowLightColor:
                                      ThemeColor.shadowLight(context),
                                  shadowDarkColor:
                                      ThemeColor.shadowDark(context),
                                  depth: 2,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                              ),
                              child: Text(
                                'Color Accent',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: ThemeColor.colorText(context),
                                ),
                              ),
                            ),
                            const Spacer(
                              flex: 1,
                            ),
                            InkWell(
                              onTap: () {
                                themeChange.colorAccent = 0;
                              },
                              child: Neumorphic(
                                style: NeumorphicStyle(
                                  color: ThemeColor.pink,
                                  shadowLightColorEmboss:
                                      ThemeColor.shadowLight(context),
                                  shadowDarkColorEmboss:
                                      ThemeColor.shadowDark(context),
                                  boxShape: const NeumorphicBoxShape.circle(),
                                  depth: -3,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.check,
                                    size: 16,
                                    color: themeChange.colorAccent == 0
                                        ? Colors.white
                                        : themeChange.colorAccent == 1
                                            ? Colors.transparent
                                            : themeChange.colorAccent == 2
                                                ? Colors.transparent
                                                : Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            InkWell(
                              onTap: () {
                                themeChange.colorAccent = 1;
                              },
                              child: Neumorphic(
                                style: NeumorphicStyle(
                                  color: ThemeColor.darkTeal,
                                  shadowLightColorEmboss:
                                      ThemeColor.shadowLight(context),
                                  shadowDarkColorEmboss:
                                      ThemeColor.shadowDark(context),
                                  boxShape: const NeumorphicBoxShape.circle(),
                                  depth: -3,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.check,
                                    size: 16,
                                    color: themeChange.colorAccent == 0
                                        ? Colors.transparent
                                        : themeChange.colorAccent == 1
                                            ? Colors.white
                                            : themeChange.colorAccent == 2
                                                ? Colors.transparent
                                                : Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            InkWell(
                              onTap: () {
                                themeChange.colorAccent = 2;
                              },
                              child: Neumorphic(
                                style: NeumorphicStyle(
                                  color: ThemeColor.darkBlue,
                                  shadowLightColorEmboss:
                                      ThemeColor.shadowLight(context),
                                  shadowDarkColorEmboss:
                                      ThemeColor.shadowDark(context),
                                  boxShape: const NeumorphicBoxShape.circle(),
                                  depth: -3,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.check,
                                    size: 16,
                                    color: themeChange.colorAccent == 0
                                        ? Colors.transparent
                                        : themeChange.colorAccent == 1
                                            ? Colors.transparent
                                            : themeChange.colorAccent == 2
                                                ? Colors.white
                                                : Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
