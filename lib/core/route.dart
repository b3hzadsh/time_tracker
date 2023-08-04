import 'package:flutter/material.dart';

import '../features/hour/presentation/pages/detail_page.dart';
import '../features/show_calendar/presentation/pages/calendar_page.dart';
import '../features/spend_time_recorder/presentation/pages/day_info_page.dart';

class RouteStuff {
  static Route onGenerateRoute(RouteSettings settings) {
    print('on genrate route is called');
    print(settings.name);
    if (settings.name!.length > 5)
      print('hi debug ' + mergeRoutPrefix(settings.name!));
    // do some thing in here to route be independent of calendar type
    var splitedRoute = settings.name!.split("/");
    // 0 and 1 index is null and screens ==> /screens
    // 0/1/2/3
    if (settings.name != null) {
      if (settings.name == '/') {
        return MaterialPageRoute(
          builder: (context) => const ShowCalendarWrapperProvider(),
        );
      } else if (mergeRoutPrefix(settings.name!) == 'screens/day-info') {
        print('function of day info in route is runnig');
        final DateTime dt = DateTime(
          strInt(splitedRoute[3]),
          strInt(splitedRoute[4]),
          strInt(splitedRoute[5]),
        );
        return MaterialPageRoute(
          builder: (context) => DayInfoWrapperProvider(dateTime: dt),
        );
      } else if (mergeRoutPrefix(settings.name!) == 'screens/datail-info') {
        final DateTime dt = DateTime(
          strInt(splitedRoute[3]),
          strInt(splitedRoute[4]),
          strInt(splitedRoute[5]),
        );
        return MaterialPageRoute(
          builder: (context) => DetailWrapperProvider(dateTime: dt),
        );
      } else {
        return MaterialPageRoute(
          builder: (context) => const ShowCalendarWrapperProvider(),
        );
      }
    } else {
      throw Exception('route in null');
    }
  }

  static String mergeRoutPrefix(String inputRoute) {
    var splitedRoute = inputRoute.split("/");
    return "${splitedRoute[1]}/${splitedRoute[2]}";
  }

  static int strInt(String input) => int.parse(input);
}
