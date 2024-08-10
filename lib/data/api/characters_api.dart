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

  Future<Map<String, dynamic>> getAllCharacters() async {
    try {
      Response respone = await dio.get("character");
      print("Raw Data got from Api => ${respone.data}");
      return respone.data;
    } catch (e) {
      print("This is the error => $e");
      return {};
    }
  }
}
