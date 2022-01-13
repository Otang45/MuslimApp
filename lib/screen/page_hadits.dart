// ignore_for_file: prefer_typing_uninitialized_variables
import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:muslim/baseurl/base_app.dart';
import 'package:muslim/dzikir/bacaan_hadis.dart';
import 'package:muslim/helper/constant.dart';
import 'package:muslim/helper/remove_glow.dart';
import 'package:muslim/screen/page_settings.dart';
import 'package:muslim/theme/dark_theme_provider.dart';
import 'package:muslim/widget/appbar.dart';

class PageHadits extends StatefulWidget {
  final index;
  const PageHadits({Key? key, this.index}) : super(key: key);
  @override
  _PageHaditsState createState() => _PageHaditsState();
}

class _PageHaditsState extends State<PageHadits> {
  var hadits = BacaHadits().hadits;
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
    return Scaffold(
      backgroundColor: ThemeColor.colorBackground(context),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            AppBarz(
              onClickLeft: () {
                Navigator.pop(context);
              },
              onClickRight: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PageSettings(),
                  ),
                );
              },
              title: 'Hadits Arba\'in',
              subTitle: Func.getTime(Format.time_2),
              iconLeft: Icons.arrow_back,
              iconRight: Icons.settings_outlined,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
              child: NeumorphicText(
                '${widget.index + 1}. ${hadits[widget.index].judul}'
                    .toUpperCase(),
                textStyle: NeumorphicTextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                style: NeumorphicStyle(
                  color: ThemeColor.colorPrimary(context),
                  shadowLightColor: ThemeColor.shadowLight(context),
                  shadowDarkColor: ThemeColor.shadowDark(context),
                  depth: 3,
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: ScrollConfiguration(
                behavior: RemoveGlow(),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 16,
                      top: 20,
                      right: 16,
                      bottom: 16,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        const SizedBox(
                          height: 16.0,
                        ),
                        Neumorphic(
                          style: NeumorphicStyle(
                            shape: NeumorphicShape.flat,
                            boxShape: NeumorphicBoxShape.roundRect(
                              const BorderRadius.all(Radius.circular(20)),
                            ),
                            color: ThemeColor.colorBackground(context),
                            shadowLightColor: ThemeColor.shadowLight(context),
                            shadowDarkColor: ThemeColor.shadowDark(context),
                            depth: 3,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              hadits[widget.index].hadits,
                              style: kAyatStyle,
                              textDirection: TextDirection.rtl,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Neumorphic(
                          style: NeumorphicStyle(
                            shape: NeumorphicShape.flat,
                            boxShape: NeumorphicBoxShape.roundRect(
                              const BorderRadius.all(Radius.circular(20)),
                            ),
                            color: ThemeColor.colorBackground(context),
                            shadowLightColor: ThemeColor.shadowLight(context),
                            shadowDarkColor: ThemeColor.shadowDark(context),
                            depth: 3,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              hadits[widget.index].terjemah,
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                color: ThemeColor.colorText(context),
                                fontSize: 15,
                                height: 1.3,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
