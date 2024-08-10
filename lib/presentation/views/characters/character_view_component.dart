import 'package:bloc_practice/data/models/characters_model.dart';
import 'package:flutter/material.dart';

class CharacterViewComponent extends StatelessWidget {
  CharacterViewComponent({super.key, required this.character});

  final CharactersModel character;

  @override
  Widget build(BuildContext context) {
    return GridTile(
      footer: Container(
        height: 45,
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        color: Colors.black54,
        alignment: Alignment.bottomCenter,
        child: Text(
          '${character.name}',
          style: TextStyle(
            height: 1.3,
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      child: Hero(
        tag: character.id,
        child: Container(
            color: Colors.grey,
            child: FadeInImage.assetNetwork(
              width: double.infinity,
              height: double.infinity,
              placeholder: 'assets/images/loadingGif.gif',
              image: character.image,
              fit: BoxFit.cover,
            )),
      ),
    );
  }
}
