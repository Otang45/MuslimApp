import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:muslim/bookmark/bookmark.dart';
import 'package:muslim/bookmark/bookmark_data.dart';
import 'package:muslim/screen/page_splash.dart';
import 'package:muslim/theme/dark_theme_provider.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting('id_ID', null)
      .then((_) => runApp(const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DarkThemeProvider darkThemeProvider = DarkThemeProvider();
  @override
  void initState() {
    getCurrentAppTheme();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<BookMarkData>(
          create: (context) => BookMarkData(),
        ),
        FutureProvider<BookMark>.value(
          value: BookMarkData().getBookMark(),
          catchError: (context, _) => BookMark(indeksSurat: 0, indeksAyat: 0),
          initialData: BookMark(indeksAyat: 0, indeksSurat: 0),
        ),
        ChangeNotifierProvider(
          create: (_) {
            return darkThemeProvider;
          },
        ),
      ],
      child: Consumer<DarkThemeProvider>(
          builder: (BuildContext context, value, Widget? child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeStyles.themeData(darkThemeProvider.darkTheme, context),
          home: const PageSplash(),
        );
      }),
    );
  }

  void getCurrentAppTheme() async {
    darkThemeProvider.darkTheme =
        await darkThemeProvider.darkThemePref.getTheme();
    darkThemeProvider.colorPrimary =
        await darkThemeProvider.colorPrimaryPref.getTheme();
    darkThemeProvider.colorAccent =
        await darkThemeProvider.colorAccentPref.getTheme();
  }
}

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }
}
