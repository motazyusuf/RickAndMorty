import 'package:dio/dio.dart';

class CharactersApi {
  late Dio dio;

  CharactersApi() {
    BaseOptions options = BaseOptions(
        baseUrl: "https://rickandmortyapi.com/api/",
        receiveDataWhenStatusError: true,
        connectTimeout: Duration(seconds: 20),
        receiveTimeout: Duration(seconds: 20));

    dio = Dio(options);
  }

  Future<List<dynamic>> getAllCharacters() async {
    try {
      Response respone = await dio.get("characters");
      return respone.data;
    } catch (e) {
      print(
          "error has occurred getting the information from https://rickandmortyapi.com/api/characters");
      return [];
    }
  }
}
