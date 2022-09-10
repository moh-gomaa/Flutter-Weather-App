import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/util/drawer/widgets/drawer_widget.dart';
import 'package:weather_app/features/weather/bloc/weather_bloc.dart';
import 'package:weather_app/features/weather/widgets/weather_widget.dart';
import 'package:weather_app/resources/themes/theme.dart';

class WeatherHome extends StatelessWidget {
  const WeatherHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      appBar: AppBar(
        backgroundColor: OwnTheme.colorPalette['primary'],
        title: Text('Weather App')
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/sky_bg.png'), fit: BoxFit.fill)),
        child: Column(
          children: [
            Expanded(
              child: BlocBuilder<WeatherBloc, WeatherState>(
                builder: (context, state) {
                  if (state is WeatherLoadInprogress)
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  else if (state is WeatherLoadFailure)
                    return Center(
                      child: Text("Something went wrong"),
                    );
                  else if (state is WeatherLoadSuccess)
                    return WeatherWidget(
                      weatherObj: state.weather,
                    );
                  else
                    return Container();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
