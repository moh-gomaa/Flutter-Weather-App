import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/util/database/weather_helper.dart';
import 'package:weather_app/core/util/drawer/bloc/drawer_bloc.dart';
import 'package:weather_app/core/util/extensions/theme_extensions.dart';
import 'package:weather_app/data/models/weather_local_model.dart';
import 'package:weather_app/features/weather/bloc/weather_bloc.dart';
import 'package:weather_app/resources/constants/constants.dart';
import 'package:weather_app/resources/themes/theme.dart';

late List<WeatherLocalModel> weatherLst =[];


class DrawerWidget extends StatelessWidget {
  DrawerWidget();


  @override
  Widget build(BuildContext context) {

    return Drawer(
        backgroundColor: OwnTheme.colorPalette['drawer'],
        child: Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.25, left: side),
          child: Column(children: [
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, '/weatherHome');

              },
              child: Row(
                children: [
                  Icon(
                    Icons.home,
                    color: OwnTheme.colorPalette['white'],
                  ),
                  SizedBox(
                    width: space2,
                  ),
                  Text(
                    'Home Screen',
                    style: OwnTheme.normalBoldTextStyle(lang: lang)
                        .colorChange(color: 'white'),
                  ),

                ],
              ),
            ),

            SizedBox(
              height: space2,
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: OwnTheme.colorPalette['white'],
                ),
                SizedBox(
                  width: space2,
                ),
                Text(
                  'Locations',
                  style: OwnTheme.normalBoldTextStyle(lang: lang)
                      .colorChange(color: 'white'),
                ),

              ],
            ),
            SizedBox(
              height: space2,
            ),
            ...weatherLst.map((e) {
              return BlocBuilder<DrawerBloc, DrawerState>(
                builder: (context, state) {
                  return _buildItem(e, state);
                },

              );
            }),
            SizedBox(
              height: space2,
            ),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
              Navigator.pushNamed(context, '/locationScreen');


            }, child:Padding(
              padding: const EdgeInsets.all(space1),
              child: Text('Manage locations'),
            )

            )

          ]),
        ));
  }

}

Widget _buildItem(WeatherLocalModel data, DrawerState state) =>
    _makeListItem(data, state);

Widget _makeListItem(WeatherLocalModel data, DrawerState state) => Builder(
  builder: (BuildContext context) =>
      Padding(
        padding: const EdgeInsets.only(bottom: space1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
                onTap: (){
                  _handleItemClick(context, data);
                },
                child: Row(
                  children: [
                    Text('${data.region}',
                    style: OwnTheme.normalBoldTextStyle(lang: lang)
                      .colorChange(color: 'white')
                      ,
                    ),
                    SizedBox(
                      width:space1 ,
                    ),

                    Icon(Icons.location_on,
                    color: OwnTheme.colorPalette['white'],
                    )
                  ],
                ))
          ],
        ),
      )
);

void _handleItemClick(BuildContext context, WeatherLocalModel item) {
  BlocProvider.of<WeatherBloc>(context)
      .add(WeatherRequest(cityName: item.region!));
  Navigator.pop(context);
  print('navigate');
  // Navigator.pop(context);
}
