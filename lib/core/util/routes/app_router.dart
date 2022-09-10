import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:weather_app/features/manage_locations/pages/location_screen.dart';
import 'package:weather_app/features/weather/pages/weather_home_screen.dart';


class AppRouter {
  static const animationDuration = Duration(milliseconds: 600);
  static PageTransition? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
        case '/weatherHome':
        return PageTransition(
          child: WeatherHome(),
          type: PageTransitionType.topToBottom,
          duration: animationDuration,
          settings: settings,
        );

   case '/locationScreen':
        return PageTransition(
          child: LocationScreen(),
          type: PageTransitionType.topToBottom,
          duration: animationDuration,
          settings: settings,
        );

      default:
        return null;
    }
  }
}
