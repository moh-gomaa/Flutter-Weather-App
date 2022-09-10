import 'package:dio/dio.dart';
import 'package:weather_app/core/util/network/remote/end_points.dart';

class DioHelper {
  static DioHelper _instance = DioHelper.internal();
  DioHelper.internal() {
    dio = Dio(
      BaseOptions(
        baseUrl: '',
        receiveDataWhenStatusError: true,
      ),
    );
  }
  factory DioHelper() => _instance;
  static Dio? dio;

  Future<dynamic> getData({
    required String url,
    Map<String, dynamic>? query,
  }) async {
    var response = await dio!.get(url, queryParameters: query,);
    print(response.realUri);

    return response.data;
  }
}
