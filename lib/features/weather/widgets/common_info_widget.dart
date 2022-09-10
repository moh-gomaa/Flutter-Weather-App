import 'package:flutter/material.dart';
import 'package:weather_app/core/util/extensions/string_extenstions.dart';
import 'package:weather_app/core/util/extensions/theme_extensions.dart';
import 'package:weather_app/core/util/extensions/widget_extensions.dart';
import 'package:weather_app/data/models/weather_model.dart';
import 'package:weather_app/resources/constants/constants.dart';
import 'package:weather_app/resources/themes/theme.dart';

class CommonInfoWidget extends StatelessWidget {
  final WeatherModel weatherObj;

  const CommonInfoWidget({Key? key, required this.weatherObj})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Image.asset(
              'assets/icons/uv_index_icon.png',
              width: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: space0),
              child: Text(
                'UV index',
                style: OwnTheme.normalBoldTextStyle(lang: lang)
                    .colorChange(color: 'white'),
              ),
            ),
            Row(
              children: [
                Text('${weatherObj.current!.uv} '.cleanString(),
                  style: OwnTheme.smallBoldTextStyle(lang: lang)
                      .colorChange(color: 'gray'),
                ),
                weatherObj.current!.uv! < 3
                    ? Text('(Low)',
                  style: OwnTheme.smallBoldTextStyle(lang: lang)
                      .colorChange(color: 'gray'),
                )
                    : weatherObj.current!.uv! < 8
                        ? Text('(Moderate)',
                  style: OwnTheme.smallBoldTextStyle(lang: lang)
                      .colorChange(color: 'gray'),
                )
                        : Text('(High)',
                  style: OwnTheme.smallBoldTextStyle(lang: lang)
                      .colorChange(color: 'gray'),
                ),
              ],
            ),
            SizedBox(
              height: space0,
            ),
          ],
        ),
        Column(
          children: [
            Image.asset(
              'assets/icons/wind_icon.png',
              width: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: space0),
              child: Text('Wind',
                style: OwnTheme.normalBoldTextStyle(lang: lang)
                    .colorChange(color: 'white'),
              ),
            ),
            Text('${weatherObj.current!.windKph} km/h'.cleanString(),
              style: OwnTheme.smallBoldTextStyle(lang: lang)
                  .colorChange(color: 'gray'),
            )
          ],
        ),
        Column(
          children: [
            Image.asset(
              'assets/icons/humidity_icon.png',
              color: OwnTheme.colorPalette['link'],
              width: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: space0),
              child: Text('Humidity',
                style: OwnTheme.normalBoldTextStyle(lang: lang)
                    .colorChange(color: 'white'),
              ),
            ),
            Text('${weatherObj.current!.humidity} %'.cleanString(),
              style: OwnTheme.smallBoldTextStyle(lang: lang)
                  .colorChange(color: 'gray'),
            )
          ],
        ),
      ],
    ).sectionFill();
  }
}
