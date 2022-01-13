import 'package:equatable/equatable.dart';

abstract class WeatherEvent extends Equatable {
  const WeatherEvent();
}

class FetchWeatherGps extends WeatherEvent {
  final double longitude;
  final double latitude;
  const FetchWeatherGps({required this.longitude, required this.latitude});
  @override
  List<Object> get props => [longitude, latitude];
}

class FetchWeather extends WeatherEvent {
  final String cityName;
  const FetchWeather({required this.cityName});
  @override
  List<Object> get props => [cityName];
}
