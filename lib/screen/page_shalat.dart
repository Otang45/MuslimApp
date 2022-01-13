import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:muslim/api/api_service.dart';
import 'package:muslim/api/api_url.dart';
import 'package:muslim/baseurl/base_app.dart';
import 'package:muslim/baseurl/base_asset.dart';
import 'package:muslim/helper/remove_glow.dart';
import 'package:muslim/main.dart';
import 'package:muslim/theme/dark_theme_provider.dart';
import 'package:muslim/widget/appbar.dart';
import 'package:progress_indicators/progress_indicators.dart';
import 'package:muslim/model/shalat/response_shalat.dart' as shalat;

class PageShalat extends StatefulWidget {
  const PageShalat(
      {Key? key,
      required this.location,
      required this.latitude,
      required this.longitude})
      : super(key: key);
  final String location, latitude, longitude;
  @override
  _PageShalatState createState() => _PageShalatState();
}

class _PageShalatState extends State<PageShalat> {
  var _location = '',
      _latitude = '',
      _longitude = '',
      _urlJadwalShalat = '',
      _shubuh1 = '--:--',
      _dhuhur1 = '--:--',
      _ashar1 = '--:--',
      _maghrib1 = '--:--',
      _isya1 = '--:--',
      _today = '--:--';
  List<shalat.Datetime> _listDatetime = [];
  var _pageLoading = true;
  var _statusShubuh = false,
      _statusDhuhur = false,
      _statusAshar = false,
      _statusMaghrib = false,
      _statusIsya = false;
  var _curTime = 0;
  @override
  void initState() {
    _location = widget.location;
    _latitude = widget.latitude;
    _longitude = widget.longitude;
    debugPrint('pageShalat: $_latitude, $_longitude');
    if (_location.isEmpty) {
      _getCurrenyLocation();
    } else {
      _getData();
    }
    super.initState();
  }

  Future _getCurrenyLocation() async {
    try {
      Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.best)
          .then((value) async {
        List<Placemark> daftarPlace =
            await placemarkFromCoordinates(value.latitude, value.longitude);
        Placemark place = daftarPlace[0];
        setState(() {
          _location = place.subLocality!;
          _latitude = value.latitude.toString();
          _longitude = value.longitude.toString();
          _getData();
        });
      }).catchError((e) {
        debugPrint('error e: $e');
      });
    } catch (error) {
      debugPrint('error try/catch: $error');
    }
  }

  Future _getData() async {
    await ApiUrl.jadwalShalat(ApiUrl.methodMonth, _latitude, _longitude)
        .then((value) => _urlJadwalShalat = value);
    ApiService().get(
        url: _urlJadwalShalat,
        headers: {},
        callback: (status, message, response) {
          setState(() {
            if (_listDatetime.isNotEmpty) _listDatetime.clear();
            if (status) {
              shalat.ResponseShalat resShalat =
                  shalat.ResponseShalat.fromJson(response);
              _listDatetime = resShalat.results!.datetime!;
              for (var i = 0; i < _listDatetime.length; i++) {
                if (_listDatetime[i].date!.gregorian == _today) {
                  setState(() {
                    _curTime = Func.timeToInt(Func.getTime(Format.time_3));
                    _shubuh1 = _listDatetime[i].times!.fajr!;
                    _dhuhur1 = _listDatetime[i].times!.dhuhr!;
                    _ashar1 = _listDatetime[i].times!.asr!;
                    _maghrib1 = _listDatetime[i].times!.maghrib!;
                    _isya1 = _listDatetime[i].times!.isha!;
                    var _iShubuh = Func.timeToInt(_shubuh1);
                    var _iDhuhur = Func.timeToInt(_dhuhur1);
                    var _iAshar = Func.timeToInt(_ashar1);
                    var _iMaghrib = Func.timeToInt(_maghrib1);
                    var _iIsya = Func.timeToInt(_isya1);
                    if (_curTime >= _iShubuh && _curTime < _iDhuhur) {
                      _statusDhuhur = true;
                    } else if (_curTime >= _iDhuhur && _curTime < _iAshar) {
                      _statusAshar = true;
                    } else if (_curTime >= _iAshar && _curTime < _iMaghrib) {
                      _statusMaghrib = true;
                    } else if (_curTime >= _iMaghrib && _curTime < _iIsya) {
                      _statusIsya = true;
                    } else {
                      _statusShubuh = true;
                    }
                  });
                }
              }
            }
            _pageLoading = false;
          });
          return;
        });
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
    _today = Func.getTime(Format.time_4);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: ThemeColor.colorBackground(context),
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: AppBar().preferredSize.height +
                      MediaQuery.of(context).padding.top +
                      12,
                  left: 16,
                  right: 16,
                ),
                child: Column(
                  children: [
                    Neumorphic(
                      padding: const EdgeInsets.all(8),
                      margin: const EdgeInsets.only(
                        left: 16,
                        top: 16,
                        right: 16,
                        bottom: 10,
                      ),
                      style: NeumorphicStyle(
                        color: ThemeColor.colorBackground(context),
                        shadowLightColorEmboss: ThemeColor.shadowLight(context),
                        shadowDarkColorEmboss: ThemeColor.shadowDark(context),
                        boxShape: NeumorphicBoxShape.roundRect(
                          const BorderRadius.all(Radius.circular(28)),
                        ),
                        depth: -3,
                      ),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(24)),
                          image: DecorationImage(
                            image: AssetImage(BaseAsset.bgPicture),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.90),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(24)),
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                ThemeColor.colorPrimary(context),
                                ThemeColor.colorAccent(context),
                              ],
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              _itemToday(Time.shubuh, _shubuh1, _statusShubuh),
                              _itemToday(Time.dhuhur, _dhuhur1, _statusDhuhur),
                              _itemToday(Time.ashar, _ashar1, _statusAshar),
                              _itemToday(
                                  Time.maghrib, _maghrib1, _statusMaghrib),
                              _itemToday(Time.isya, _isya1, _statusIsya),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: ScrollConfiguration(
                        behavior: RemoveGlow(),
                        child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          itemCount: _listDatetime.length,
                          itemBuilder: (context, index) =>
                              _itemShalat(_listDatetime, index, context),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Center(
                child: Visibility(
                  visible: _pageLoading,
                  child: JumpingDotsProgressIndicator(
                    fontSize: Size.size40,
                    color: ThemeColor.colorPrimary(context),
                  ),
                ),
              ),
              AppBarz(
                onClickLeft: () {
                  Navigator.pop(context);
                },
                onClickRight: () {
                  setState(() {
                    _pageLoading = true;
                    _getCurrenyLocation();
                  });
                },
                title: _location,
                subTitle: Func.getTime(Format.time_2),
                iconLeft: Icons.arrow_back,
                iconRight: Icons.refresh,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _itemShalat(
      List<shalat.Datetime> listDatetime, var index, BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
        color: ThemeColor.colorBackground(context),
        shadowLightColorEmboss: ThemeColor.shadowLight(context),
        shadowDarkColorEmboss: ThemeColor.shadowDark(context),
        boxShape: NeumorphicBoxShape.roundRect(
          const BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
            bottomLeft: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
        ),
        depth: -3,
      ),
      margin: EdgeInsets.all(Size.size8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: ThemeColor.colorPrimary(context),
            padding: EdgeInsets.symmetric(
              vertical: Size.size8,
              horizontal: Size.size16,
            ),
            child: Row(
              children: [
                Text(
                  _listDatetime[index].date!.gregorian!,
                  style: TextStyle(
                    fontSize: Size.size14,
                    color: (_listDatetime[index].date!.gregorian == _today)
                        ? ThemeColor.colorAccent(context)
                        : ThemeColor.white,
                  ),
                ),
                const Spacer(),
                Visibility(
                  visible: (_listDatetime[index].date!.gregorian == _today)
                      ? true
                      : false,
                  child: Text(
                    'Hari ini',
                    style: TextStyle(
                      fontSize: Size.size14,
                      color: ThemeColor.colorAccent(context),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              _itemWaktu(Time.shubuh, listDatetime[index].times!.fajr, context),
              _itemWaktu(
                  Time.dhuhur, listDatetime[index].times!.dhuhr, context),
              _itemWaktu(Time.ashar, listDatetime[index].times!.asr, context),
              _itemWaktu(
                  Time.maghrib, listDatetime[index].times!.maghrib, context),
              _itemWaktu(Time.isya, listDatetime[index].times!.isha, context),
            ],
          )
        ],
      ),
    );
  }

  Widget _itemWaktu(var waktuShalat, var jamShalat, BuildContext context) {
    return Flexible(
      flex: 1,
      child: Container(
        padding: EdgeInsets.all(Size.size8),
        width: double.infinity,
        child: Column(
          children: [
            Text(
              waktuShalat,
              style: TextStyle(
                fontSize: Size.size12,
                color: ThemeColor.colorAccent(context),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              jamShalat,
              style: TextStyle(
                  fontSize: Size.size16,
                  color: ThemeColor.colorText(context),
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }

  Widget _itemToday(var shalat, var time, var status) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            shalat,
            style: TextStyle(
              color: HexColor('FFFFFF'),
              fontSize: Size.size16,
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Text(
            time,
            style: TextStyle(
              color: HexColor('FFFFFF'),
              fontSize: Size.size16,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Icon(
              Icons.timer,
              color: HexColor('FFFFFF'),
              size: 20,
            ),
          )
        ],
      ),
    );
  }
}
