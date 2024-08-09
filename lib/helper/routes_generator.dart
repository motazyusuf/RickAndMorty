import 'package:bloc_practice/helper/routes_names.dart';
import 'package:bloc_practice/presentation/views/characters_view.dart';
import 'package:bloc_practice/presentation/views/splash_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoutesGenerator {
  static Route<dynamic> onGeneratedRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesNames.initial:
        return MaterialPageRoute(
            builder: (context) => SplashView(), settings: settings);

      case RoutesNames.characters:
        return MaterialPageRoute(
            builder: (context) => CharactersView(), settings: settings);

      default:
        return MaterialPageRoute(
            builder: (context) => SplashView(), settings: settings);
    }
  }
}
