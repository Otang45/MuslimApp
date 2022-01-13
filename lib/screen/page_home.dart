import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:muslim/api/api_service.dart';
import 'package:muslim/api/api_url.dart';
import 'package:muslim/api/weather_api_client.dart';
import 'package:muslim/baseurl/base_app.dart';
import 'package:muslim/baseurl/base_asset.dart';
import 'package:muslim/helper/remove_glow.dart';
import 'package:muslim/model/audio/audio.dart';
import 'package:muslim/model/quran/surah.dart';
import 'package:muslim/repository/weather_repository.dart';
import 'package:muslim/screen/page_audio.dart';
import 'package:muslim/screen/page_dzikir.dart';
import 'package:muslim/screen/page_qibla.dart';
import 'package:muslim/screen/page_quran.dart';
import 'package:muslim/screen/page_settings.dart';
import 'package:muslim/screen/page_shalat.dart';
import 'package:muslim/screen/page_weather.dart';
import 'package:muslim/theme/dark_theme_provider.dart';
import 'package:muslim/widget/appbar.dart';
import 'package:muslim/widget/bottom_icon.dart';
import 'package:muslim/widget/circle.dart';
import 'package:muslim/widget/hadits_bottom_sheet.dart';
import 'package:muslim/widget/last_prayer.dart';
import 'package:muslim/widget/title_home.dart';
import 'package:progress_indicators/progress_indicators.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:muslim/model/shalat/response_shalat.dart' as shalat;
import 'package:http/http.dart' as http;

class PageHome extends StatefulWidget {
  const PageHome({Key? key}) : super(key: key);
  @override
  _PageHomeState createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  var _vTime = false;
  var _curLocation = '',
      _latitude = '',
      _longitude = '',
      _curShalat = '',
      _lastShalat = '',
      _curCity = '',
      _curTimeShalat = '--:--';
  var _shubuh = 0,
      _dhuhur = 0,
      _ashar = 0,
      _maghrib = 0,
      _isya = 0,
      _curTime = 0;
  final ApiService _apiService = ApiService();
  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);
  @override
  void initState() {
    super.initState();
    _getData();
  }

  Future _saveData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString('lat', _latitude);
    preferences.setString('lon', _longitude);
    preferences.setString('location', _curLocation);
    preferences.setString('city', _curCity);
  }

  Future _getData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      _latitude = preferences.getString('lat') ?? '-6.2790939';
      _longitude = preferences.getString('lon') ?? '107.1582443';
      _curLocation =
          preferences.getString('location') ?? 'Kecamatan Cikarang Utara';
      _curCity = preferences.getString('city') ?? 'Pasirgombong';
    });
    _getShalat();
  }

  void _getShalat() async {
    var urlShalat = '';
    await ApiUrl.jadwalShalat(ApiUrl.methodToday, _latitude, _longitude)
        .then((value) => urlShalat = value);
    _apiService.get(
      url: urlShalat,
      headers: {},
      callback: (status, message, response) {
        try {
          if (status) {
            setState(() {
              shalat.ResponseShalat resShalat =
                  shalat.ResponseShalat.fromJson(response);
              List<shalat.Datetime>? listDatetime = resShalat.results!.datetime;
              _curTime = Func.timeToInt(Func.getTime(Format.time_3));
              _shubuh = Func.timeToInt(listDatetime![0].times!.fajr!);
              _dhuhur = Func.timeToInt(listDatetime[0].times!.dhuhr!);
              _ashar = Func.timeToInt(listDatetime[0].times!.asr!);
              _maghrib = Func.timeToInt(listDatetime[0].times!.maghrib!);
              _isya = Func.timeToInt(listDatetime[0].times!.isha!);
              if (_curTime >= _shubuh && _curTime < _dhuhur) {
                _curShalat = Time.dhuhur;
                _lastShalat = Time.shubuh;
                _curTimeShalat = listDatetime[0].times!.dhuhr!;
              } else if (_curTime >= _dhuhur && _curTime < _ashar) {
                _curShalat = Time.ashar;
                _lastShalat = Time.dhuhur;
                _curTimeShalat = listDatetime[0].times!.asr!;
              } else if (_curTime >= _ashar && _curTime < _maghrib) {
                _curShalat = Time.maghrib;
                _lastShalat = Time.ashar;
                _curTimeShalat = listDatetime[0].times!.maghrib!;
              } else if (_curTime >= _maghrib && _curTime < _isya) {
                _curShalat = Time.isya;
                _lastShalat = Time.maghrib;
                _curTimeShalat = listDatetime[0].times!.isha!;
              } else {
                _curShalat = Time.shubuh;
                _lastShalat = Time.isya;
                _curTimeShalat = listDatetime[0].times!.fajr!;
              }
              _vTime = true;
            });
          }
        } catch (e) {
          debugPrint(e.toString());
        }
      },
    );
  }

  Future _getCurrenyLocation() async {
    LocationPermission permission;
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    } else {
      if (permission == LocationPermission.deniedForever) {
        await Geolocator.openAppSettings();
      } else {
        bool serviceEnabled;
        serviceEnabled = await Geolocator.isLocationServiceEnabled();
        if (!serviceEnabled) {
          await Geolocator.openLocationSettings();
        } else {
          try {
            Geolocator.getCurrentPosition(
                    desiredAccuracy: LocationAccuracy.best)
                .then((value) async {
              setState(() {
                _latitude = value.latitude.toString();
                _longitude = value.longitude.toString();
              });
              List<Placemark> daftarPlace = await placemarkFromCoordinates(
                  value.latitude, value.longitude);
              Placemark place = daftarPlace[0];
              setState(() {
                _curLocation = place.locality!;
                _curCity = place.subLocality!;
                _getShalat();
                _saveData();
              });
              _refreshController.loadComplete();
            }).catchError((e) {
              debugPrint('error e: $e');
            });
          } catch (error) {
            debugPrint('error try/catch: $error');
          }
        }
      }
    }
  }

  void _onRefresh() async {
    await Future.delayed(const Duration(milliseconds: 3000));
    _getCurrenyLocation();
    _refreshController.refreshCompleted();
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
    final now = DateTime.now();
    final tomorrow1 = DateTime(now.day + 4);
    final tomorrow = DateTime(now.day + 3);
    final today = DateTime(now.day + 2);
    final yesterday = DateTime(now.day - 4);
    final yesterday1 = DateTime(now.day - 5);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: ThemeColor.colorBackground(context),
        body: ScrollConfiguration(
          behavior: RemoveGlow(),
          child: SmartRefresher(
            physics: const BouncingScrollPhysics(),
            controller: _refreshController,
            enablePullDown: true,
            header: CustomHeader(
              height: 120,
              builder: (context, mode) {
                Widget body;
                if (mode == RefreshStatus.idle) {
                  body = Text(
                    "Tarik untuk memperbarui",
                    style: TextStyle(
                      color: ThemeColor.colorText(context),
                      fontSize: 16,
                    ),
                  );
                } else if (mode == RefreshStatus.refreshing) {
                  body = JumpingDotsProgressIndicator(
                    fontSize: 42,
                    color: ThemeColor.colorText(context),
                  );
                } else if (mode == RefreshStatus.failed) {
                  body = Text(
                    "Refresh Gagal",
                    style: TextStyle(
                      color: ThemeColor.colorText(context),
                      fontSize: 16,
                    ),
                  );
                } else if (mode == RefreshStatus.canRefresh) {
                  body = Text(
                    "Lepas untuk memperbarui",
                    style: TextStyle(
                      color: ThemeColor.colorText(context),
                      fontSize: 16,
                    ),
                  );
                } else {
                  body = Text(
                    "Berhasih di perbarui",
                    style: TextStyle(
                      color: ThemeColor.colorText(context),
                      fontSize: 16,
                    ),
                  );
                }
                return SizedBox(
                  height: 50,
                  child: Center(child: body),
                );
              },
            ),
            onRefresh: _onRefresh,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                AppBarz(
                  onClickLeft: () {
                    showModalBottomSheet(
                      backgroundColor: ThemeColor.colorBackground(context),
                      context: context,
                      builder: (context) {
                        return const HaditsBottomSheet();
                      },
                    );
                  },
                  onClickRight: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PageSettings(),
                      ),
                    );
                  },
                  title: 'Muslim App',
                  subTitle: Func.getTime(Format.time_2),
                  iconLeft: Icons.menu,
                  iconRight: Icons.settings_outlined,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(34, 10, 34, 10),
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Neumorphic(
                        padding: const EdgeInsets.all(8),
                        style: NeumorphicStyle(
                          color: ThemeColor.colorBackground(context),
                          shadowLightColorEmboss:
                              ThemeColor.shadowLight(context),
                          shadowDarkColorEmboss: ThemeColor.shadowDark(context),
                          boxShape: NeumorphicBoxShape.roundRect(
                            const BorderRadius.all(Radius.circular(28)),
                          ),
                          depth: -3,
                        ),
                        child: Container(
                          height: 180,
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
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Visibility(
                                  visible: _vTime,
                                  child: Text(
                                    _curShalat,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: Size.size18),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    _curTimeShalat,
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 42,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Text(
                                  '$_curCity, $_curLocation',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: Size.size12,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 8,
                    left: 42,
                    right: 42,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Circle(
                        title: Func.getTime1(yesterday1),
                        fontSize: 14,
                        size: 50,
                        visibility: false,
                      ),
                      Circle(
                        title: Func.getTime1(yesterday),
                        fontSize: 16,
                        size: 55,
                        visibility: false,
                      ),
                      Circle(
                        title: Func.getTime1(today),
                        fontSize: 18,
                        size: 60,
                        visibility: true,
                      ),
                      Circle(
                        title: Func.getTime1(tomorrow),
                        fontSize: 16,
                        size: 55,
                        visibility: false,
                      ),
                      Circle(
                        title: Func.getTime1(tomorrow1),
                        fontSize: 14,
                        size: 50,
                        visibility: false,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 34,
                    top: 12,
                    right: 34,
                  ),
                  child: TitleHome(
                    onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => PageShalat(
                          location: _curCity,
                          latitude: _latitude,
                          longitude: _longitude,
                        ),
                      ),
                    ),
                    title: 'Jadwal Sholat',
                    textButton: 'Lihat Semua',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 34,
                    top: 8,
                    right: 34,
                    bottom: 8,
                  ),
                  child: LastPrayer(title: _lastShalat),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 34,
                    right: 34,
                  ),
                  child: TitleHome(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const PageDzikir(title: 'Shalat'),
                        ),
                      );
                    },
                    title: 'Hadis & Dzikir',
                    textButton: 'Dzikir Shalat',
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 34,
                      top: 8,
                      right: 34,
                      bottom: 8,
                    ),
                    child: Neumorphic(
                      style: NeumorphicStyle(
                        shape: NeumorphicShape.flat,
                        boxShape: NeumorphicBoxShape.roundRect(
                            const BorderRadius.all(Radius.circular(12))),
                        color: ThemeColor.colorPrimary(context),
                        shadowLightColorEmboss: ThemeColor.shadowLight(context),
                        shadowDarkColorEmboss: ThemeColor.shadowDark(context),
                        depth: -3,
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
                        padding: const EdgeInsets.all(2),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: NeumorphicButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const PageDzikir(title: 'Pagi'),
                                    ),
                                  );
                                },
                                style: NeumorphicStyle(
                                  shape: NeumorphicShape.flat,
                                  boxShape: NeumorphicBoxShape.roundRect(
                                      const BorderRadius.all(
                                          Radius.circular(12))),
                                  color: ThemeColor.colorBackground(context),
                                  shadowLightColor:
                                      ThemeColor.shadowLight(context),
                                  shadowDarkColor:
                                      ThemeColor.shadowDark(context),
                                  depth: 3,
                                ),
                                margin:
                                    const EdgeInsets.fromLTRB(10, 10, 8, 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      FontAwesomeIcons.cloudSun,
                                      size: 35.0,
                                      color: ThemeColor.colorAccent(context),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 8.0, bottom: 4.0),
                                      child: Text(
                                        'Dzikir Pagi',
                                        textAlign: TextAlign.center,
                                        maxLines: 1,
                                        style: TextStyle(
                                            color:
                                                ThemeColor.colorText(context),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                    Text(
                                      'dibaca pagi hari',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: ThemeColor.colorText(context)
                                              .withOpacity(0.5),
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: NeumorphicButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const PageDzikir(title: 'Petang'),
                                    ),
                                  );
                                },
                                style: NeumorphicStyle(
                                  shape: NeumorphicShape.flat,
                                  boxShape: NeumorphicBoxShape.roundRect(
                                      const BorderRadius.all(
                                          Radius.circular(12))),
                                  color: ThemeColor.colorBackground(context),
                                  shadowLightColor:
                                      ThemeColor.shadowLight(context),
                                  shadowDarkColor:
                                      ThemeColor.shadowDark(context),
                                  depth: 3,
                                ),
                                margin:
                                    const EdgeInsets.fromLTRB(8, 10, 10, 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      FontAwesomeIcons.cloudMoon,
                                      size: 35.0,
                                      color: ThemeColor.colorAccent(context),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 8.0, bottom: 4.0),
                                      child: Text(
                                        'Dzikir Sore',
                                        textAlign: TextAlign.center,
                                        maxLines: 1,
                                        style: TextStyle(
                                            color:
                                                ThemeColor.colorText(context),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                    Text(
                                      'dibaca sore hari',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: ThemeColor.colorText(context)
                                              .withOpacity(0.5),
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                bottomBar(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget bottomBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(32, 10, 32, 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BottomIcon(
            onPressed: () async {
              var surah = await Surah().bukaSurah();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PageQuran(surah: surah),
                ),
              );
            },
            icon: Icons.bookmark,
            title: 'Al\'Quran',
          ),
          BottomIcon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PageQibla(),
                ),
              );
            },
            icon: Icons.gps_fixed,
            title: 'Kiblat',
          ),
          BottomIcon(
            onPressed: () async {
              await Audio().bukaAudio().then(
                    (value) => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PageAudio(
                          audio: value,
                        ),
                      ),
                    ),
                  );
            },
            icon: Icons.music_note_rounded,
            title: 'Murottal',
          ),
          BottomIcon(
            onPressed: () {
              final WeatherRepository weatherRepository = WeatherRepository(
                weatherApiClient: WeatherApiClient(
                  httpClient: http.Client(),
                  apiKey: ApiUrl.OPEN_WEATHER_MAP,
                ),
              );
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      WeatherApp(weatherRepository: weatherRepository),
                ),
              );
            },
            icon: Icons.cloud,
            title: 'Cuaca',
          ),
        ],
      ),
    );
  }
}
