import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:weather_app/core/util/database/weather_helper.dart';
import 'package:weather_app/core/util/drawer/widgets/drawer_widget.dart';
import 'package:weather_app/data/models/weather_local_model.dart';
import 'package:weather_app/data/models/weather_model.dart';
import 'package:weather_app/data/repositories/weather_repository.dart';

part 'weather_event.dart';

part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc() : super(WeatherInitial()) {
    on<WeatherEvent>((event, emit) async {
      WeatherHelper weatherDB = WeatherHelper();

      var data = await weatherDB.getAll();
      weatherLst = data;
      if (event is WeatherRequest) {
        emit(WeatherLoadInprogress());
        WeatherHelper weatherDB = WeatherHelper();

        try {
          WeatherModel weatherResponse =
              await WeatherRepository().getWeather(event.cityName);

          var data = await weatherDB.getAll();
          List<WeatherLocalModel> tmp = data
              .where((element) =>
                  element.region == weatherResponse.location!.region)
              .toList();

          print('len${tmp.length}');
          if (tmp.length < 1) {
            weatherDB.savePost(WeatherLocalModel(
                lat: weatherResponse.location!.lat,
                lon: weatherResponse.location!.lon,
                region: weatherResponse.location!.region,
                isCurrent: true));

            var xx = await weatherDB.getAll();
            weatherLst = xx;
            print('bloc');
            print(weatherLst.length);

          }

          emit(WeatherLoadSuccess(weather: weatherResponse));
        } catch (e) {
          emit(WeatherLoadFailure(error: e.toString()));
        }
      }
    });
  }
}
