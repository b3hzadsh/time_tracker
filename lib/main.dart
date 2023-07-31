import 'package:flutter/material.dart';
import 'package:time_tracker/core/route.dart';
import 'features/dashboard/presentation/pages/dashboard.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'sfdsf',
      // home: DashboardBlocWrapper(),
      onGenerateRoute: RouteStuff.onGenerateRoute,
    );
  }
}
