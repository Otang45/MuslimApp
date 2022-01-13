// ignore_for_file: avoid_print
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:muslim/baseurl/base_app.dart';
import 'package:muslim/bloc/weather_bloc.dart';
import 'package:muslim/bloc/weather_event.dart';
import 'package:muslim/bloc/weather_state.dart';
import 'package:muslim/repository/weather_repository.dart';
import 'package:muslim/screen/page_settings.dart';
import 'package:muslim/theme/dark_theme_provider.dart';
import 'package:muslim/widget/appbar.dart';
import 'package:muslim/widget/weather_widget.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:geolocator/geolocator.dart';
import 'package:progress_indicators/progress_indicators.dart';

class WeatherApp extends StatelessWidget {
  final WeatherRepository weatherRepository;
  const WeatherApp({Key? key, required this.weatherRepository})
      : super(key: key);
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
      body: Stack(
        children: [
          BlocProvider(
            create: (context) =>
                WeatherBloc(weatherRepository: weatherRepository),
            child: const WeatherScreen(),
          ),
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
            title: 'Cuaca',
            subTitle: Func.getTime(Format.time_2),
            iconLeft: Icons.arrow_back,
            iconRight: Icons.settings_outlined,
          ),
        ],
      ),
    );
  }
}

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({Key? key}) : super(key: key);
  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen>
    with TickerProviderStateMixin {
  late WeatherBloc _weatherBloc;
  String? _cityName;
  late Animation<double> _fadeAnimation;
  late AnimationController _fadeController;
  @override
  void initState() {
    super.initState();
    _weatherBloc = BlocProvider.of<WeatherBloc>(context);
    _fetchWeatherWithLocation().catchError((error) {
      _fetchWeatherWithCity();
    });
    _fadeController = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );
    _fadeAnimation = CurvedAnimation(
      parent: _fadeController,
      curve: Curves.easeIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColor.colorBackground(context),
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: ThemeColor.colorBackground(context),
        ),
        child: FadeTransition(
          opacity: _fadeAnimation,
          child: BlocBuilder<WeatherBloc, WeatherState>(
              builder: (_, WeatherState weatherState) {
            _fadeController.reset();
            _fadeController.forward();
            if (weatherState is WeatherLoaded) {
              _cityName = weatherState.weather.cityName!;
              return WeatherWidget(
                weather: weatherState.weather,
              );
            } else if (weatherState is WeatherError ||
                weatherState is WeatherEmpty) {
              String errorText = 'There was an error fetching weather data';
              if (weatherState is WeatherError) {
                if (weatherState.errorCode == 404) {
                  errorText = 'We have trouble fetching weather for $_cityName';
                }
              }
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Icon(
                    Icons.error_outline,
                    color: Colors.redAccent,
                    size: 32,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    errorText,
                    style: const TextStyle(
                      color: Colors.red,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        primary: ThemeColor.colorText(context),
                        elevation: 0,
                      ),
                      child: const Text(
                        'Try Again',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      onPressed: _fetchWeatherWithLocation,
                    ),
                  )
                ],
              );
            } else if (weatherState is WeatherLoading) {
              return Center(
                child: JumpingDotsProgressIndicator(
                  fontSize: 32,
                  color: ThemeColor.colorText(context),
                ),
              );
            }
            return const Text('No city set');
          }),
        ),
      ),
    );
  }

  _fetchWeatherWithCity() {
    _weatherBloc.add(FetchWeather(cityName: _cityName!));
  }

  _fetchWeatherWithLocation() async {
    var permissionResult = await Permission.locationWhenInUse.status;
    switch (permissionResult) {
      case PermissionStatus.restricted:
      case PermissionStatus.permanentlyDenied:
        print('location permission denied');
        _showLocationDeniedDialog();
        break;
      case PermissionStatus.denied:
        await Permission.locationWhenInUse.request();
        _fetchWeatherWithLocation();
        break;
      case PermissionStatus.limited:
      case PermissionStatus.granted:
        print('getting location');
        Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.best,
        );
        print(position.toString());
        _weatherBloc.add(
          FetchWeatherGps(
            latitude: position.latitude,
            longitude: position.longitude,
          ),
        );
        break;
    }
  }

  void _showLocationDeniedDialog() {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          title: const Text(
            'Location is disabled :(',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Enable!'),
              style: TextButton.styleFrom(
                primary: ThemeColor.purple,
                elevation: 1,
              ),
              onPressed: () {
                openAppSettings();
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
