import 'package:equatable/equatable.dart';
import 'package:muslim/model/weather.dart';

abstract class WeatherState extends Equatable {
  const WeatherState();
  @override
  List<Object> get props => [];
}

class WeatherEmpty extends WeatherState {}

class WeatherLoading extends WeatherState {}

class WeatherLoaded extends WeatherState {
  final Weather weather;
  const WeatherLoaded({required this.weather});
  @override
  List<Object> get props => [weather];
}

class WeatherError extends WeatherState {
  final int errorCode;
  const WeatherError({required this.errorCode});
  @override
  List<Object> get props => [errorCode];
}
