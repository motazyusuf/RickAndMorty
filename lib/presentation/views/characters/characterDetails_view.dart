import 'package:bloc_practice/data/models/characters_model.dart';
import 'package:flutter/material.dart';

class CharacterdetailsView extends StatelessWidget {
  const CharacterdetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    final character =
        ModalRoute.of(context)!.settings.arguments as CharactersModel;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
            centerTitle: true,
            title: Text(
              "${character.name}",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            )),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 350,
            width: 350,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(character.image)),
                color: Colors.red),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => Container(
                margin: EdgeInsetsDirectional.all(10),
                child: Text(
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    'Gender: ${character.gender} \n'
                    'Species: ${character.species} \n'
                    'Status: ${character.statusDeadOrAlive} \n'
                    'Created on: ${character.creationDate} \n'
                    'Episodes: ${character.appearance} \n'
                    ''),
              ),
              itemCount: 1,
            ),
          )
        ],
      ),
    );
  }
}
