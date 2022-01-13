import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_qiblah/flutter_qiblah.dart';
import 'package:muslim/baseurl/base_app.dart';
import 'package:muslim/qibla/loading_indicator.dart';
import 'package:muslim/qibla/qibla_compass.dart';
import 'package:muslim/qibla/qibla_maps.dart';
import 'package:muslim/theme/dark_theme_provider.dart';
import 'package:muslim/widget/appbar.dart';

class PageQibla extends StatelessWidget {
  PageQibla({Key? key}) : super(key: key);
  final _deviceSupport = FlutterQiblah.androidDeviceSensorSupport();
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
        children: [
          AppBarz(
            onClickLeft: () {
              Navigator.pop(context);
            },
            onClickRight: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => QiblahMaps()),
              );
            },
            title: 'Kiblat',
            subTitle: Func.getTime(Format.time_2),
            iconLeft: Icons.arrow_back,
            iconRight: Icons.gps_not_fixed_outlined,
          ),
          Expanded(
            child: FutureBuilder(
              future: _deviceSupport,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const LoadingIndicator();
                }
                if (snapshot.hasError) {
                  return Center(
                    child: Text("Error: ${snapshot.error.toString()}"),
                  );
                }
                if (snapshot.hasData) {
                  return const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: QiblahCompass(),
                  );
                } else {
                  return const LoadingIndicator();
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
