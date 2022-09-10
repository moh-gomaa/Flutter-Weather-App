import 'package:country_state_city/country_state_city.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/data/models/weather_model.dart';
import 'package:weather_app/features/weather/bloc/weather_bloc.dart';
import 'package:weather_app/features/weather/widgets/astro_widget.dart';
import 'package:weather_app/features/weather/widgets/common_info_widget.dart';
import 'package:weather_app/features/weather/widgets/current_weather_details_widget.dart';
import 'package:weather_app/features/weather/widgets/forecast_weather_widget.dart';
import 'package:weather_app/features/weather/widgets/location_info_widget.dart';
import 'package:weather_app/resources/constants/constants.dart';
import 'package:weather_app/resources/themes/theme.dart';

class WeatherWidget extends StatelessWidget {
  final WeatherModel weatherObj;

  WeatherWidget({Key? key, required this.weatherObj}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            EdgeInsets.only(top: top, bottom: bottom, right: side, left: side),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.25,
                child: LocationInfoWidget(
                  weatherObj: weatherObj,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: space3),
                child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.20,
                    child: CurrentWeatherDetailsWidget(weatherObj: weatherObj)),
              ),
              Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: ForecastWeatherWidget(weatherObj: weatherObj)),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: space3),
                child: Container(
                    height: MediaQuery.of(context).size.height * 0.25,
                    child: AstroWidget(weatherObj: weatherObj)),
              ),
              Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  child: CommonInfoWidget(weatherObj: weatherObj))
            ],
          ),
        ),
      ),
    );
  }



}
