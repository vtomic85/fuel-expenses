import 'package:flutter/material.dart';

import 'pages/_pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fuel Expenses',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      routes: {
        '/': (context) => HomePage(),
        '/vehicleOverview': (context) => VehicleOverviewPage(),
        '/about': (context) => AboutPage(),
      },
      initialRoute: '/',
    );
  }
}
