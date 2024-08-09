import 'package:bloc_practice/data/api/characters_api.dart';
import 'package:bloc_practice/data/models/characters_model.dart';

class CharactersRepository {
  CharactersApi charactersApi;

  CharactersRepository(this.charactersApi);

  Future<List<CharactersModel>> getAllCharacters() async {
    final characters = await charactersApi.getAllCharacters();
    return characters
        .map((characterInstance) => CharactersModel.fromJson(characterInstance))
        .toList();
  }
}
