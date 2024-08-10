import 'package:bloc_practice/core/application_theme_manager.dart';
import 'package:bloc_practice/helper/routes_generator.dart';
import 'package:flutter/material.dart';

import 'helper/routes_names.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  final routesGenerator = RoutesGenerator();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ApplicationThemeManager.lightTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: RoutesNames.initial,
      onGenerateRoute: routesGenerator.onGeneratedRoute,
    );
  }
}
