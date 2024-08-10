import 'package:bloc_practice/business_logic/characters_cubit.dart';
import 'package:bloc_practice/data/repository/characters_repository.dart';
import 'package:bloc_practice/helper/routes_names.dart';
import 'package:bloc_practice/presentation/views/characters/characters_view.dart';
import 'package:bloc_practice/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/api/characters_api.dart';

class RoutesGenerator {
  late CharactersRepository charactersRepository;
  late CharactersCubit charactersCubit;

  RoutesGenerator() {
    charactersRepository = CharactersRepository(CharactersApi());
    charactersCubit = CharactersCubit(charactersRepository);
  }

  Route? onGeneratedRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesNames.initial:
        return MaterialPageRoute(
            builder: (context) => SplashView(), settings: settings);

      case RoutesNames.characters:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => charactersCubit,
                  child: CharactersView(),
                ),
            settings: settings);

      default:
        return MaterialPageRoute(
            builder: (context) => SplashView(), settings: settings);
    }
  }
}
