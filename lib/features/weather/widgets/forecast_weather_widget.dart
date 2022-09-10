import 'package:flutter/material.dart';
import 'package:weather_app/core/util/date_time_format/date_time_util.dart';
import 'package:weather_app/core/util/extensions/string_extenstions.dart';
import 'package:weather_app/core/util/extensions/theme_extensions.dart';
import 'package:weather_app/core/util/extensions/widget_extensions.dart';
import 'package:weather_app/data/models/weather_model.dart';
import 'package:weather_app/resources/constants/constants.dart';
import 'package:weather_app/resources/themes/theme.dart';

class ForecastWeatherWidget extends StatelessWidget {
  final WeatherModel weatherObj;

  const ForecastWeatherWidget({Key? key, required this.weatherObj})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        ...weatherObj.forecast!.forecastday!.map((e) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: space1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.21,
                  child: weatherObj.forecast!.forecastday!.indexOf(e) == 0
                      ? Text(
                          'Today',
                          style: OwnTheme.smallBoldTextStyle(lang: lang)
                              .colorChange(color: 'white'),
                        )
                      : Text(
                          DateTimeUtil().dayFormat(
                              isTimestamp: true, lang: lang, date: e.dateEpoch),
                          style: OwnTheme.smallBoldTextStyle(lang: lang)
                              .colorChange(color: 'white'),
                        ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.18,
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/icons/humidity_icon.png',
                        width: 20,
                        height: 20,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: space0,
                      ),
                      Text(
                        '${e.day!.avghumidity} %'.rmvTralling(),
                        style: OwnTheme.smallBoldTextStyle(lang: lang)
                            .colorChange(color: 'white'),
                      ),
                    ],
                  ),
                ),
                e.day!.condition!.text == 'Sunny'
                    ? Container(
                        width: MediaQuery.of(context).size.width * 0.15,
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/icons/sun_icon.png',
                              width: 20,
                              height: 20,
                            ),
                            SizedBox(
                              width: space1,
                            ),
                            Image.asset(
                              'assets/icons/crescent_moon_icon.png',
                              width: 20,
                              height: 20,
                              color: OwnTheme.colorPalette['link'],
                            ),
                          ],
                        ),
                      )
                    : Container(),
                Container(
                  width: MediaQuery.of(context).size.width * 0.25,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '${e.day!.maxtempC}'.cleanString().tempC(),
                        style: OwnTheme.smallBoldTextStyle(lang: lang)
                            .colorChange(color: 'white'),
                      ),
                      SizedBox(width: space1),
                      Text(
                        '${e.day!.mintempC}'.cleanString().tempC(),
                        style: OwnTheme.smallBoldTextStyle(lang: lang)
                            .colorChange(color: 'white'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }).toList()
      ],
    ).sectionFill();
  }
}
