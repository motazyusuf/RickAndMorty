import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../data/models/characters_model.dart';
import '../data/repository/characters_repository.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  late List<CharactersModel> characters;
  CharactersRepository charactersRepository;

  CharactersCubit(this.charactersRepository) : super(CharactersInitial());

  List<CharactersModel> getAllCharacters() {
    charactersRepository.getAllCharacters().then(
      (characters) {
        emit(CharactersLoaded(characters));
        this.characters = characters;
      },
    );

    return characters;
  }
}
