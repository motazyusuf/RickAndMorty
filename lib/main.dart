import 'package:bloc_practice/helper/routes_generator.dart';
import 'package:flutter/material.dart';

import 'helper/routes_names.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      initialRoute: RoutesNames.initial,
      onGenerateRoute: RoutesGenerator.onGeneratedRoute,
    );
  }
}


