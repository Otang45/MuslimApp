import 'package:flutter/material.dart';
import 'package:muslim/main.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DarkThemeProvider with ChangeNotifier {
  DarkThemePref darkThemePref = DarkThemePref();
  bool _darkTheme = false;
  bool get darkTheme => _darkTheme;
  set darkTheme(bool value) {
    _darkTheme = value;
    darkThemePref.setDarkTheme(value);
    notifyListeners();
  }

  ColorPrimaryPref colorPrimaryPref = ColorPrimaryPref();
  int _colorPrimary = 0;
  int get colorPrimary => _colorPrimary;
  set colorPrimary(int value) {
    _colorPrimary = value;
    colorPrimaryPref.setColorPrimary(value);
    notifyListeners();
  }

  ColorAccentPref colorAccentPref = ColorAccentPref();
  int _colorAccent = 0;
  int get colorAccent => _colorAccent;
  set colorAccent(int value) {
    _colorAccent = value;
    colorAccentPref.setColorAccent(value);
    notifyListeners();
  }
}

class DarkThemePref {
  static const themeStatus = "THEMESTATUS";
  setDarkTheme(bool value) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool(themeStatus, value);
  }

  Future<bool> getTheme() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getBool(themeStatus) ?? false;
  }
}

class ColorPrimaryPref {
  static const primaryColor = "COLORPRIMARY";
  setColorPrimary(int value) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setInt(primaryColor, value);
  }

  Future<int> getTheme() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getInt(primaryColor) ?? 2;
  }
}

class ColorAccentPref {
  static const accentColor = "COLORACCENT";
  setColorAccent(int value) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setInt(accentColor, value);
  }

  Future<int> getTheme() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getInt(accentColor) ?? 0;
  }
}

class ThemeColor {
  // Custom Color
  static final Color blue = HexColor('75BDFF');
  static final Color darkBlue = HexColor('576EE6');
  static final Color teal = HexColor('67DEB3');
  static final Color darkTeal = HexColor('37B899');
  static final Color cyan = HexColor('43DBE5');
  static final Color pink = HexColor('FF4F75');
  static final Color orange = HexColor('FDA14D');
  static final Color lightOrange = HexColor('F5CC79');
  static final Color purple = HexColor('9B5DCE');
  static final Color white = HexColor('FFFFFF');
  static final Color black = HexColor('000000');
  static Color colorBackground(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context, listen: false);
    return themeChange.darkTheme ? HexColor('17181A') : HexColor('CDE4FE');
  }

  static Color colorText(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context, listen: false);
    return themeChange.darkTheme ? HexColor('E9EDF0') : HexColor('434341');
  }

  static Color colorPrimary(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context, listen: false);
    if (themeChange.colorPrimary == 0) {
      return pink;
    } else if (themeChange.colorPrimary == 1) {
      return darkTeal;
    } else if (themeChange.colorPrimary == 2) {
      return darkBlue;
    } else {
      return blue;
    }
  }

  static Color colorAccent(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context, listen: false);
    if (themeChange.colorAccent == 0) {
      return pink;
    } else if (themeChange.colorAccent == 1) {
      return darkTeal;
    } else if (themeChange.colorAccent == 2) {
      return darkBlue;
    } else {
      return blue;
    }
  }

  static Color shadowLight(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);
    return themeChange.darkTheme
        ? HexColor('FFFFFF').withOpacity(0.5)
        : HexColor('FFFFFF');
  }

  static Color shadowDark(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);
    return themeChange.darkTheme
        ? HexColor('000000')
        : HexColor('000000').withOpacity(0.5);
  }

  static Brightness brightness(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);
    return themeChange.darkTheme ? Brightness.light : Brightness.dark;
  }
}

class ThemeStyles {
  static ThemeData themeData(bool isDarkTheme, BuildContext buildContext) {
    return isDarkTheme
        ? ThemeData(
            primaryColor: Colors.black,
            brightness: Brightness.dark,
            backgroundColor: const Color(0xFF212121),
            dividerColor: Colors.black12,
            fontFamily: 'arial',
            textTheme: const TextTheme(
              headline1: TextStyle(
                fontFamily: 'arial',
                fontSize: 42,
                fontWeight: FontWeight.w600,
              ),
              headline2: TextStyle(
                fontFamily: 'arial',
                fontSize: 28,
                fontWeight: FontWeight.w600,
              ),
              bodyText1: TextStyle(
                fontFamily: "arial",
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
              caption: TextStyle(
                fontFamily: "arial",
                fontSize: 14,
              ),
            ),
            colorScheme: ColorScheme.fromSwatch(
              primarySwatch: Colors.grey,
              brightness: Brightness.light,
            ).copyWith(
              secondary: const Color(0xff896277),
              brightness: Brightness.dark,
            ),
          )
        : ThemeData(
            primaryColor: const Color(0xffee8f8b),
            brightness: Brightness.light,
            backgroundColor: Colors.white,
            dividerColor: Colors.white60,
            fontFamily: 'arial',
            textTheme: const TextTheme(
              headline1: TextStyle(
                fontFamily: 'arial',
                fontSize: 42,
                fontWeight: FontWeight.w600,
              ),
              headline2: TextStyle(
                fontFamily: 'arial',
                fontSize: 28,
                fontWeight: FontWeight.w600,
              ),
              bodyText1: TextStyle(
                fontFamily: "arial",
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
              caption: TextStyle(
                fontFamily: "arial",
                fontSize: 14,
              ),
            ),
            colorScheme: ColorScheme.fromSwatch(
              primarySwatch: Colors.grey,
              brightness: Brightness.light,
            ).copyWith(
              secondary: const Color(0xff896277),
              brightness: Brightness.light,
            ),
          );
  }
}
