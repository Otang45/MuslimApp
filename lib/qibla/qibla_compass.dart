// ignore_for_file: unnecessary_string_interpolations

import 'dart:async';
import 'dart:math' show pi;
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_qiblah/flutter_qiblah.dart';
import 'package:geolocator/geolocator.dart';
import 'package:muslim/baseurl/base_asset.dart';
import 'package:muslim/qibla/loading_indicator.dart';
import 'package:muslim/qibla/location_error_widget.dart';
import 'package:muslim/theme/dark_theme_provider.dart';

class QiblahCompass extends StatefulWidget {
  const QiblahCompass({Key? key}) : super(key: key);
  @override
  _QiblahCompassState createState() => _QiblahCompassState();
}

class _QiblahCompassState extends State<QiblahCompass> {
  final _locationStreamController =
      StreamController<LocationStatus>.broadcast();
  get stream => _locationStreamController.stream;
  @override
  void initState() {
    _checkLocationStatus();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(8.0),
      child: StreamBuilder(
        stream: stream,
        builder: (context, AsyncSnapshot<LocationStatus> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const LoadingIndicator();
          }
          if (snapshot.data!.enabled == true) {
            switch (snapshot.data!.status) {
              case LocationPermission.always:
              case LocationPermission.whileInUse:
                return const QiblahCompassWidget();
              case LocationPermission.denied:
                return LocationErrorWidget(
                  error: "Location service permission denied",
                  callback: _checkLocationStatus,
                );
              case LocationPermission.deniedForever:
                return LocationErrorWidget(
                  error: "Location service Denied Forever !",
                  callback: _checkLocationStatus,
                );
              // case GeolocationStatus.unknown:
              //   return LocationErrorWidget(
              //     error: "Unknown Location service error",
              //     callback: _checkLocationStatus,
              //   );
              default:
                return Container();
            }
          } else {
            return LocationErrorWidget(
              error: "Please enable Location service",
              callback: _checkLocationStatus,
            );
          }
        },
      ),
    );
  }

  Future<void> _checkLocationStatus() async {
    final locationStatus = await FlutterQiblah.checkLocationStatus();
    if (locationStatus.enabled &&
        locationStatus.status == LocationPermission.denied) {
      await FlutterQiblah.requestPermissions();
      final s = await FlutterQiblah.checkLocationStatus();
      _locationStreamController.sink.add(s);
    } else {
      _locationStreamController.sink.add(locationStatus);
    }
  }

  @override
  void dispose() {
    super.dispose();
    _locationStreamController.close();
    FlutterQiblah().dispose();
  }
}

class QiblahCompassWidget extends StatelessWidget {
  const QiblahCompassWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FlutterQiblah.qiblahStream,
      builder: (_, AsyncSnapshot<QiblahDirection> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const LoadingIndicator();
        }
        final qiblahDirection = snapshot.data!;
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Neumorphic(
                    style: NeumorphicStyle(
                      shape: NeumorphicShape.flat,
                      boxShape: const NeumorphicBoxShape.circle(),
                      color: ThemeColor.colorPrimary(context),
                      shadowLightColor: ThemeColor.shadowLight(context),
                      shadowDarkColor: ThemeColor.shadowDark(context),
                      depth: 3,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            ThemeColor.colorPrimary(context),
                            ThemeColor.colorAccent(context),
                          ],
                        ),
                      ),
                      child: Neumorphic(
                        margin: const EdgeInsets.all(16),
                        style: NeumorphicStyle(
                          shape: NeumorphicShape.flat,
                          boxShape: const NeumorphicBoxShape.circle(),
                          color: ThemeColor.colorBackground(context),
                          shadowLightColorEmboss:
                              ThemeColor.shadowLight(context),
                          shadowDarkColorEmboss: ThemeColor.shadowDark(context),
                          depth: -3,
                        ),
                        child: Transform.rotate(
                          angle: (qiblahDirection.direction * (pi / 180) * -1),
                          child: Image.asset(
                            BaseAsset.qiblaDial,
                            width: 320,
                            height: 320,
                            color: ThemeColor.colorPrimary(context),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Transform.rotate(
                    angle: (qiblahDirection.qiblah * (pi / 180) * -1),
                    alignment: Alignment.center,
                    child: Image.asset(
                      BaseAsset.qiblaArrow,
                      fit: BoxFit.contain,
                      height: 220,
                      alignment: Alignment.center,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: NeumorphicText(
                  '${qiblahDirection.offset.toStringAsFixed(3)}',
                  textStyle: NeumorphicTextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                  ),
                  style: NeumorphicStyle(
                    color: ThemeColor.colorAccent(context),
                    shadowLightColor: ThemeColor.shadowLight(context),
                    shadowDarkColor: ThemeColor.shadowDark(context),
                    depth: 3,
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
