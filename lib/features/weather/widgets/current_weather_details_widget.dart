import 'package:flutter/material.dart';
import 'package:weather_app/core/util/date_time_format/date_time_util.dart';
import 'package:weather_app/core/util/extensions/string_extenstions.dart';
import 'package:weather_app/core/util/extensions/theme_extensions.dart';
import 'package:weather_app/core/util/extensions/widget_extensions.dart';
import 'package:weather_app/data/models/weather_model.dart';
import 'package:weather_app/resources/constants/constants.dart';
import 'package:weather_app/resources/themes/theme.dart';

class CurrentWeatherDetailsWidget extends StatelessWidget {
  final WeatherModel weatherObj;

  CurrentWeatherDetailsWidget({Key? key, required this.weatherObj})
      : super(key: key);

  // late TooltipBehavior _tooltipBehavior;

  @override
  Widget build(BuildContext context) {
    List<Hour> dayWeather = weatherObj.forecast!.forecastday![0].hour!
        .where((element) =>
            DateTimeUtil().hourIntegerFormat(
                isTimestamp: true, lang: lang, date: element.timeEpoch) >
            DateTimeUtil().hourIntegerFormat(
                isTimestamp: true,
                lang: lang,
                date: weatherObj.current!.lastUpdatedEpoch))
        .toList();

    // List<CurrentWeather> xx = [];
    // xx = dayWeather.map((e)
    //     {
    //       return CurrentWeather(e.hashCode, e.tempC!);
    //     }
    // ).toList();
    //
    // print('xxxLen=${xx.length}');
    // for(var x in xx){
    //   print(x.temp);
    // }
    // _tooltipBehavior = TooltipBehavior(enable: true);
    // print('length==${weatherObj.forecast!.forecastday![0].hour!.length}');
    return Container(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ...dayWeather.map((e) {
            return Padding(
              padding: const EdgeInsets.all(space1),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    DateTimeUtil()
                        .hourFormat(
                            date: e.timeEpoch, isTimestamp: true, lang: lang)
                        .rmvLeading(),
                    style: OwnTheme.smallBoldTextStyle(lang: lang)
                        .colorChange(color: 'white'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: space1),
                    child: Container(
                      child: e.condition!.text == 'Sunny'
                          ? Image.asset('assets/icons/sun_icon.png',
                              width: 25, height: 25)
                          : Image.asset(
                              'assets/icons/crescent_moon_icon.png',
                              width: 25,
                              height: 25,
                              color: OwnTheme.colorPalette['link'],
                            ),
                    ),
                  ),
                  Row(
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
                        '${e.humidity} %'.cleanString(),
                        style: OwnTheme.smallBoldTextStyle(lang: lang)
                            .colorChange(color: 'white'),
                      ),
                    ],
                  )
                ],
              ),
            );
          }).toList(),
          // SfCartesianChart(
          //
          //   legend: Legend(isVisible: false),
          //   tooltipBehavior: _tooltipBehavior,
          //   series: <ChartSeries>[
          //     LineSeries<CurrentWeather, double>(
          //         dataSource: xx,
          //         xValueMapper: (CurrentWeather item, _) => item.hour.toDouble(),
          //         yValueMapper: (CurrentWeather item, _) => item.temp,
          //         dataLabelSettings: DataLabelSettings(isVisible: true),
          //
          //         enableTooltip: true)
          //   ],
          //   primaryXAxis: NumericAxis(
          //     edgeLabelPlacement: EdgeLabelPlacement.shift,
          //
          //   ),
          //   primaryYAxis: NumericAxis(
          //       labelFormat: '{value}',
          //
          //       numberFormat: NumberFormat.decimalPattern()),
          // )
        ],
      ).sectionFill(),
    );
  }
}
//
// class CurrentWeather {
//   CurrentWeather(this.hour, this.temp);
//
//   final int hour;
//   final double temp;
// }
