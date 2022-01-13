import 'package:muslim/api/weather_api_client.dart';
import 'package:muslim/model/weather.dart';

class WeatherRepository {
  final WeatherApiClient weatherApiClient;
  WeatherRepository({required this.weatherApiClient});
  Future<Weather> getWeather(String cityName,
      {double? latitude, double? longitude}) async {
    // ignore: prefer_conditional_assignment, unnecessary_null_comparison
    if (cityName == null) {
      cityName = await weatherApiClient.getCityNameFromLocation(
          latitude: latitude!, longitude: longitude!);
    }
    var weather = await weatherApiClient.getWeatherData(cityName);
    var weathers = await weatherApiClient.getForecast(cityName);
    weather.forecast = weathers;
    return weather;
  }

  Future<Weather> getWeatherGps({double? latitude, double? longitude}) async {
    var cityName = await weatherApiClient.getCityNameFromLocation(
        latitude: latitude!, longitude: longitude!);
    var weather = await weatherApiClient.getWeatherData(cityName);
    var weathers = await weatherApiClient.getForecast(cityName);
    weather.forecast = weathers;
    return weather;
  }
}
