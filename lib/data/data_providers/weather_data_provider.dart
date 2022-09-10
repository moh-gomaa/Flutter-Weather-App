import 'package:dio/dio.dart';
import 'package:weather_app/core/util/network/remote/end_points.dart';
import 'package:weather_app/core/util/network/remote/network_util.dart';

class WeatherDataProvider {

  Future<dynamic> getRawWeatherData(String city) async {
    return DioHelper().getData(url: '$baseUrl$weatherApiversion$forecast',
    query: {
      'key': weatherApiKey,
      'q': city,
      'days': 7,
      'aqi': 'no',
      'alerts': 'no',
    }
    );
  }
}