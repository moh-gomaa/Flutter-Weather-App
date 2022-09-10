import 'package:dio/dio.dart';
import 'package:weather_app/core/util/network/remote/end_points.dart';
import 'package:weather_app/core/util/network/remote/network_util.dart';

class CountryDataProvider {

  Future<dynamic> getRawCountries() async {
    return DioHelper().getData(url: 'https://restcountries.com/v3.1/all',
    );
  }
}