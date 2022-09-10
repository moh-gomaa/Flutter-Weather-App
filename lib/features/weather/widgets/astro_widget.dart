import 'package:flutter/material.dart';
import 'package:weather_app/core/util/extensions/theme_extensions.dart';
import 'package:weather_app/core/util/extensions/widget_extensions.dart';
import 'package:weather_app/data/models/weather_model.dart';
import 'package:weather_app/resources/constants/constants.dart';
import 'package:weather_app/resources/themes/theme.dart';

class AstroWidget extends StatelessWidget {
  final WeatherModel weatherObj;

  const AstroWidget({Key? key, required this.weatherObj}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: space1),
          child: Column(
            children: [
              Text(
                'Sunrise',
                style: OwnTheme.normalBoldTextStyle(lang: lang)
                    .colorChange(color: 'white'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: space0),
                child: Text(
                  '${weatherObj.forecast!.forecastday![0].astro!.sunrise}',
                  style: OwnTheme.suitableBoldTextStyle(lang: lang)
                      .colorChange(color: 'white'),
                ),
              ),
              Image.asset(
                'assets/icons/sunrise_icon.png',
                width: 80,
                height: 80,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: space1),
          child: Column(
            children: [
              Text(
                'Sunset',
                style: OwnTheme.normalBoldTextStyle(lang: lang)
                    .colorChange(color: 'white'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: space0),
                child: Text(
                  '${weatherObj.forecast!.forecastday![0].astro!.sunrise}',
                  style: OwnTheme.suitableBoldTextStyle(lang: lang)
                      .colorChange(color: 'white'),
                ),
              ),
              Image.asset(
                'assets/icons/sunset_icon.png',
                width: 80,
                height: 80,
              )
            ],
          ),
        )
      ],
    ).sectionFill();
  }
}
