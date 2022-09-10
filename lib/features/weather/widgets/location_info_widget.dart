import 'package:flutter/material.dart';
import 'package:weather_app/core/util/date_time_format/date_time_util.dart';
import 'package:weather_app/core/util/extensions/theme_extensions.dart';
import 'package:weather_app/data/models/weather_model.dart';
import 'package:weather_app/resources/constants/constants.dart';
import 'package:weather_app/core/util/extensions/string_extenstions.dart';
import 'package:weather_app/resources/themes/theme.dart';

class LocationInfoWidget extends StatelessWidget {
  final WeatherModel weatherObj;

  const LocationInfoWidget({Key? key, required this.weatherObj})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(weatherObj.forecast!.forecastday!.length);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '${weatherObj.current!.tempC}'.cleanString().tempC(),
              style: OwnTheme.hugeBoldTextStyle(lang: lang)
                  .colorChange(color: 'white'),
            ),

            weatherObj.current!.condition!.text == 'Sunny'
                ? Image.asset(
              'assets/icons/sun_icon.png',
              width: 50,
              height: 50,
            )
                : Transform.scale(
              scaleX: -1,
              child: Image.asset(
                'assets/icons/crescent_moon_icon.png',
                color: OwnTheme.colorPalette['link'],
                width: 50,
                height: 50,
              ),
            )
          ],
        ),
        SizedBox(
          height: space1,
        ),
        Text(
          '${weatherObj.location!.country} - ${weatherObj.location!.name} (${weatherObj.location!.region})',
          style: OwnTheme.suitableBoldTextStyle(lang: lang)
              .colorChange(color: 'white'),

        ),
        SizedBox(
          height: space3,
        ),
        Text(
          '${weatherObj.forecast!.forecastday![0].day!.maxtempC}'
                  .cleanString()
                  .tempC() +
              ' / ${weatherObj.forecast!.forecastday![0].day!.mintempC}'
                  .cleanString()
                  .tempC() +
              ' feels like ${weatherObj.current!.feelslikeC}'
                  .cleanString()
                  .tempC(),
          style: OwnTheme.smallBoldTextStyle(lang: lang)
              .colorChange(color: 'white'),
        ),
        SizedBox(
          height: space1,
        ),
        Text(
          DateTimeUtil().shortDayTimeFormat(
              isTimestamp: true,
              lang: lang,
              date: weatherObj.current!.lastUpdatedEpoch!),
          style: OwnTheme.smallBoldTextStyle(lang: lang)
              .colorChange(color: 'white'),
        )
      ],
    );
  }
}
