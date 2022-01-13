import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:muslim/baseurl/base_asset.dart';
import 'package:muslim/screen/page_home.dart';
import 'package:muslim/theme/dark_theme_provider.dart';
import 'package:progress_indicators/progress_indicators.dart';

class PageSplash extends StatefulWidget {
  const PageSplash({Key? key}) : super(key: key);

  @override
  State<PageSplash> createState() => _PageSplashState();
}

class _PageSplashState extends State<PageSplash> {
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
    startApp(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: ThemeColor.colorBackground(context),
        body: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(BaseAsset.appIcons),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Muslim App",
                    style: TextStyle(
                      fontSize: 32,
                      color: ThemeColor.colorPrimary(context),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: const Alignment(0, 0.85),
              child: JumpingDotsProgressIndicator(
                fontSize: 42,
                color: ThemeColor.colorText(context),
              ),
            )
          ],
        ),
      ),
    );
  }

  startApp(BuildContext context) {
    return Timer(
      const Duration(seconds: 3),
      () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (_) {
              return const PageHome();
            },
          ),
        );
      },
    );
  }
}
