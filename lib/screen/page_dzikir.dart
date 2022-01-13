import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:muslim/dzikir/bacaan_dzikir.dart';
import 'package:muslim/helper/constant.dart';
import 'package:muslim/helper/remove_glow.dart';
import 'package:muslim/screen/page_settings.dart';
import 'package:muslim/theme/dark_theme_provider.dart';
import 'package:muslim/widget/appbar.dart';

class PageDzikir extends StatefulWidget {
  final String title;
  const PageDzikir({Key? key, required this.title}) : super(key: key);
  @override
  _PageDzikirState createState() => _PageDzikirState();
}

class _PageDzikirState extends State<PageDzikir> {
  int pageIndex = 0;
  String? pageDesc;
  String? intro;
  IconData? icon;
  Dzikir bacaan = Dzikir();
  String _intro(int index) {
    if (index == 2 || index == 3 || index == 4) {
      return intro = '$kBasmalah\n';
    } else {
      return intro = '';
    }
  }

  void _initCounter(String input) {
    if (input == 'Pagi') {
    } else if (input == 'Petang') {
    } else {}
  }

  String _switcherJudul(String input) {
    if (input == 'Pagi') {
      return '${bacaan.dzikirPagi[pageIndex].judul} ${bacaan.dzikirPagi[pageIndex].jumlah}x';
    } else if (input == 'Petang') {
      return '${bacaan.dzikirPetang[pageIndex].judul} ${bacaan.dzikirPetang[pageIndex].jumlah}x';
    } else {
      return '${bacaan.dzikirShalat[pageIndex].judul} ${bacaan.dzikirShalat[pageIndex].jumlah}x';
    }
  }

  String _switcherAyat(String input) {
    if (input == 'Pagi') {
      return '${_intro(pageIndex)}${bacaan.dzikirPagi[pageIndex].ayat}';
    } else if (input == 'Petang') {
      return '${_intro(pageIndex)}${bacaan.dzikirPetang[pageIndex].ayat}';
    } else {
      return bacaan.dzikirShalat[pageIndex].ayat;
    }
  }

  String _switcherTerjemah(String input) {
    if (input == 'Pagi') {
      return bacaan.dzikirPagi[pageIndex].terjemahan;
    } else if (input == 'Petang') {
      return bacaan.dzikirPetang[pageIndex].terjemahan;
    } else {
      return bacaan.dzikirShalat[pageIndex].terjemahan;
    }
  }

  int _panjang(String input) {
    if (input == 'Pagi') {
      return Dzikir().dzikirPagi.length;
    } else if (input == 'Petang') {
      return Dzikir().dzikirPetang.length;
    } else {
      return Dzikir().dzikirShalat.length;
    }
  }

  @override
  void initState() {
    super.initState();
    _initCounter(widget.title);
    icon = Icons.close;
  }

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
      body: Column(
        children: <Widget>[
          AppBarz(
            onClickLeft: () => Navigator.pop(context),
            onClickRight: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PageSettings(),
                ),
              );
            },
            title: 'Dzikir ${widget.title}',
            subTitle: '${pageIndex + 1}/${_panjang(widget.title)}',
            iconLeft: Icons.arrow_back,
            iconRight: Icons.settings_outlined,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 10, 16, 0),
            child: NeumorphicText(
              _switcherJudul(widget.title),
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
                            _switcherAyat(widget.title),
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
                            _switcherTerjemah(widget.title),
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
          Expanded(
            flex: 1,
            child: Container(
              margin: const EdgeInsets.only(top: 16.0, left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  pageIndex != 0
                      ? NeumorphicButton(
                          style: NeumorphicStyle(
                            color: ThemeColor.colorBackground(context),
                            shape: NeumorphicShape.flat,
                            shadowLightColor: ThemeColor.shadowLight(context),
                            shadowDarkColor: ThemeColor.shadowDark(context),
                            depth: 3,
                          ),
                          child: Icon(
                            Icons.skip_previous,
                            size: 24,
                            color: ThemeColor.colorPrimary(context),
                          ),
                          onPressed: () {
                            if (pageIndex > 0) {
                              setState(
                                () {
                                  pageIndex--;
                                  _initCounter(widget.title);
                                  icon = Icons.close;
                                },
                              );
                            }
                          },
                        )
                      : const SizedBox(width: 50),
                  NeumorphicButton(
                    style: NeumorphicStyle(
                      color: ThemeColor.colorAccent(context),
                      shape: NeumorphicShape.flat,
                      shadowLightColor: ThemeColor.shadowLight(context),
                      shadowDarkColor: ThemeColor.shadowDark(context),
                      depth: 3,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.home,
                      color: ThemeColor.white,
                    ),
                  ),
                  pageIndex != _panjang(widget.title) - 1
                      ? NeumorphicButton(
                          style: NeumorphicStyle(
                            color: ThemeColor.colorBackground(context),
                            shape: NeumorphicShape.flat,
                            shadowLightColor: ThemeColor.shadowLight(context),
                            shadowDarkColor: ThemeColor.shadowDark(context),
                            depth: 3,
                          ),
                          child: Icon(
                            Icons.skip_next,
                            size: 24,
                            color: ThemeColor.colorPrimary(context),
                          ),
                          onPressed: () {
                            if (pageIndex < _panjang(widget.title) - 1) {
                              setState(
                                () {
                                  pageIndex++;
                                  _initCounter(widget.title);
                                  icon = Icons.close;
                                },
                              );
                            }
                          },
                        )
                      : const SizedBox(
                          width: 50,
                        )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
