import 'package:flutter/material.dart';

import '../features/dashboard/presentation/pages/dashboard.dart';

class RouteStuff {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => const DashboardWrapperProvider(),
        );
      case '/screens/setting':
        return MaterialPageRoute(
          builder: (context) =>  Container(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const DashboardWrapperProvider(),
        );
    }
  }
}
