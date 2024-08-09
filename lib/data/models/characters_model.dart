class CharactersModel {
  late int id;
  late String name;
  late String statusDeadOrAlive;
  late String species;
  late String type;
  late String gender;
  late Map<String, String> origin;
  late Map<String, String> location;
  late String image;
  late List<String> appearance;
  late String creationDate;
  late String urlLink;

  CharactersModel.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    statusDeadOrAlive = json["status"];
    species = json["species"];
    type = json["type"];
    gender = json["gender"];
    origin = json["origin"];
    location = json["location"];
    image = json["image"];
    appearance = json["episode"];
    creationDate = json["created"];
    urlLink = json["url"];
  }
}
