import 'package:bloc_practice/data/api/characters_api.dart';
import 'package:bloc_practice/data/models/characters_model.dart';

class CharactersRepository {
  CharactersApi charactersApi;

  CharactersRepository(this.charactersApi);

  Future<List<dynamic>> getAllCharacters() async {
    final temp = await charactersApi.getAllCharacters();
    final characters = temp["results"];
    var result = characters
        .map((characterInstance) => CharactersModel.fromJson(characterInstance))
        .toList();
    print("Data Modeling Sample => ${result[0].gender}");
    return result;
  }
}
