import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:weather_app/core/util/drawer/bloc/drawer_bloc.dart';
import 'package:weather_app/core/util/routes/app_router.dart';
import 'package:weather_app/data/models/weather_model.dart';
import 'package:weather_app/data/repositories/weather_repository.dart';
import 'package:weather_app/features/manage_locations/country_bloc.dart';
import 'package:weather_app/features/weather/bloc/weather_bloc.dart';
import 'package:weather_app/features/weather/pages/weather_home_screen.dart';

import 'resources/themes/theme.dart';

void main() {
  runApp(const MyApp());
}

WeatherModel countryWeather = WeatherModel();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              DrawerBloc(),
        ),
        BlocProvider(
          create: (context) =>
              CountryBloc()..add(GetCountries()),
        ),
        BlocProvider(
          create: (context) =>
              WeatherBloc()..add(WeatherRequest(cityName: 'Egypt')),
        ),
      ],
      child: Sizer(
        builder: (BuildContext context, Orientation orientation,
            DeviceType deviceType) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ownThemeData,
            onGenerateRoute: AppRouter.onGenerateRoute,
            home: WeatherHome(),
          );
        },
      ),
    );
  }
}
