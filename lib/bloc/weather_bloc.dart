// ignore_for_file: avoid_print
import 'package:bloc/bloc.dart';
import 'package:muslim/api/http_exception.dart';
import 'package:muslim/bloc/weather_event.dart';
import 'package:muslim/model/weather.dart';
import 'package:muslim/repository/weather_repository.dart';
import 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherRepository weatherRepository;
  WeatherBloc({required this.weatherRepository}) : super(WeatherEmpty()) {
    on<FetchWeatherGps>(
      (event, emit) async {
        emit(WeatherLoading());
        try {
          final Weather weather = await weatherRepository.getWeatherGps(
            latitude: event.latitude,
            longitude: event.longitude,
          );
          emit(WeatherLoaded(weather: weather));
        } catch (exception) {
          print(exception);
          if (exception is HTTPException) {
            emit(WeatherError(errorCode: exception.code));
          } else {
            emit(const WeatherError(errorCode: 500));
          }
        }
      },
    );
    on<FetchWeather>(
      (event, emit) async {
        emit(WeatherLoading());
        try {
          final Weather weather =
              await weatherRepository.getWeather(event.cityName);
          emit(WeatherLoaded(weather: weather));
        } catch (exception) {
          print(exception);
          if (exception is HTTPException) {
            emit(WeatherError(errorCode: exception.code));
          } else {
            emit(const WeatherError(errorCode: 500));
          }
        }
      },
    );
  }
}
