import 'package:bloc_practice/business_logic/characters_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'character_view_component.dart';

class CharactersView extends StatefulWidget {
  const CharactersView({super.key});

  @override
  State<CharactersView> createState() => _CharactersViewState();
}

class _CharactersViewState extends State<CharactersView> {
  late List<dynamic> allCharacters;

  @override
  void initState() {
    super.initState();
    allCharacters =
        BlocProvider.of<CharactersCubit>(context).getAllCharacters();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          centerTitle: true,
          title: const Text(
            "Characters",
            style: TextStyle(
                fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
      body: BlocBuilder<CharactersCubit, CharactersState>(
        builder: (context, state) {
          if (state is CharactersLoaded) {
            allCharacters = (state).characters;
            return Padding(
              padding: const EdgeInsets.all(5),
              child: Column(
                children: [
                  Expanded(
                    child: GridView.builder(
                        itemCount: allCharacters.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisSpacing: 5,
                          mainAxisSpacing: 5,
                          crossAxisCount: 2,
                        ),
                        itemBuilder: (context, index) => CharacterViewComponent(
                            character: allCharacters[index])),
                  ),
                ],
              ),
            );
          } else {
            return Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/loadingGif2.gif"))),
            );
          }
        },
      ),
    );
  }
}
