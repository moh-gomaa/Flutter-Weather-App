import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/util/drawer/widgets/drawer_widget.dart';
import 'package:weather_app/core/util/widgets/TextBoxNormal.dart';
import 'package:weather_app/features/weather/bloc/weather_bloc.dart';
import 'package:weather_app/features/weather/widgets/weather_widget.dart';
import 'package:weather_app/resources/constants/constants.dart';
import 'package:weather_app/resources/themes/theme.dart';

class LocationScreen extends StatelessWidget {
   LocationScreen({Key? key}) : super(key: key);

  TextEditingController countryTec = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      appBar: AppBar(
          backgroundColor: OwnTheme.colorPalette['primary'],
          title: Text('Add location')
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/sky_bg.png'), fit: BoxFit.fill)),
        child: Padding(
          padding: const EdgeInsets.only(right: side, top: top, left: side),
          child: Column(
            children: [
              CustomTextBoxNormal(
                title: 'Country',
                keyboardPadding: true,
                lang: lang,
                index: 0,
                hint: 'Select country',
                tec: countryTec,
              ),

              ElevatedButton(onPressed: (){
                BlocProvider.of<WeatherBloc>(context)
                    .add(WeatherRequest(cityName: countryTec.text));
                Navigator.pushNamed(context, '/weatherHome');


              }, child: Text('Search'))

            ],
          ),
        ),
      ),
    );
  }
}
