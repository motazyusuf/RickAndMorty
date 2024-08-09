import 'package:bloc_practice/business_logic/characters_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/characters_model.dart';

class CharactersView extends StatefulWidget {
  const CharactersView({super.key});

  @override
  State<CharactersView> createState() => _CharactersViewState();
}

class _CharactersViewState extends State<CharactersView> {
  late List<CharactersModel> allCharacters;

  @override
  void initState() {
    allCharacters =
        BlocProvider.of<CharactersCubit>(context).getAllCharacters();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
