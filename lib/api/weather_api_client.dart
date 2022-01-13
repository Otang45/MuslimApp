// ignore_for_file: prefer_typing_uninitialized_variables, avoid_print
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:muslim/api/http_exception.dart';
import 'package:muslim/model/weather.dart';

/// Wrapper around the open weather map api
/// https://openweathermap.org/current
class WeatherApiClient {
  static const baseUrl = 'http://api.openweathermap.org';
  final apiKey;
  final http.Client httpClient;
  WeatherApiClient({required this.httpClient, required this.apiKey})
      : assert(apiKey != null);
  Uri _buildUri(String endpoint, Map<String, dynamic> queryParameters) {
    var query = {'appid': apiKey};
    query = query..addAll(queryParameters);
    var uri = Uri(
      scheme: 'http',
      host: 'api.openweathermap.org',
      path: 'data/2.5/$endpoint',
      queryParameters: query,
    );
    print('fetching $uri');
    return uri;
  }

  Future<String> getCityNameFromLocation(
      {required double latitude, required double longitude}) async {
    final uri = _buildUri('weather', {
      'lat': latitude.toString(),
      'lon': longitude.toString(),
      'lang': 'id',
    });
    final res = await httpClient.get(uri);
    if (res.statusCode != 200) {
      throw HTTPException(res.statusCode, "unable to fetch weather data");
    }
    final weatherJson = json.decode(res.body);
    return weatherJson['name'];
  }

  Future<Weather> getWeatherData(String cityName) async {
    final uri = _buildUri('weather', {
      'q': cityName,
      'lang': 'id',
    });
    final res = await httpClient.get(uri);
    if (res.statusCode != 200) {
      throw HTTPException(res.statusCode, "unable to fetch weather data");
    }
    final weatherJson = json.decode(res.body);
    return Weather.fromJson(weatherJson);
  }

  Future<List<Weather>> getForecast(String cityName) async {
    final uri = _buildUri('forecast', {
      'q': cityName,
      'lang': 'id',
    });
    final res = await httpClient.get(uri);
    if (res.statusCode != 200) {
      throw HTTPException(res.statusCode, "unable to fetch weather data");
    }
    final forecastJson = json.decode(res.body);
    List<Weather> weathers = Weather.fromForecastJson(forecastJson);
    return weathers;
  }
}
