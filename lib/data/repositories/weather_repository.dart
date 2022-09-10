import 'package:weather_app/data/data_providers/weather_data_provider.dart';
import 'package:weather_app/data/models/weather_model.dart';

class WeatherRepository {
  late final WeatherDataProvider weatherDataProvider;

  Future<WeatherModel> getWeather(String location) async {
    var resBody = await WeatherDataProvider().getRawWeatherData(location);
    final WeatherModel weather = WeatherModel.fromJson(resBody);

    return weather;
  }
}