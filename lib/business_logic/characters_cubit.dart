import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../data/repository/characters_repository.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  List<dynamic> characters = [];
  CharactersRepository charactersRepository;

  CharactersCubit(this.charactersRepository) : super(CharactersInitial());

  List getAllCharacters() {
    charactersRepository.getAllCharacters().then((characters) {
      emit(CharactersLoaded(characters));
    });

    this.characters = characters;
    return characters;
  }
}
