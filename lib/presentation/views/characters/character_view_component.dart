import 'package:bloc_practice/data/models/characters_model.dart';
import 'package:bloc_practice/helper/routes_names.dart';
import 'package:flutter/material.dart';

class CharacterViewComponent extends StatelessWidget {
  CharacterViewComponent({super.key, required this.character});

  final CharactersModel character;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridTile(
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
        child: InkWell(
          onTap: () => Navigator.pushNamed(
              context, RoutesNames.characterDetails,
              arguments: character),
          child: Hero(
            tag: character.id,
            child: Container(
                decoration: BoxDecoration(color: Colors.grey),
                child: FadeInImage.assetNetwork(
                  placeholder: 'assets/images/loadingGif.gif',
                  image: character.image,
                  fit: BoxFit.cover,
                )),
          ),
        ),
      ),
    );
  }
}
