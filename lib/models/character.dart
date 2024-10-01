import 'package:parcial/models/transformation.dart';

class Character {
  final int id;
  final String? name;
  final String? race;
  final String? description;
  final String? image;
  final List<Transformation>? transformations; 

  Character(
      {required this.id, this.name, this.race, this.description, this.image, this.transformations});

  factory Character.fromJsonMap(Map<dynamic, dynamic> json) => Character( 
    id: json["id"],
    name: json["name"] ?? "No name",
    race: json["race"] ?? "No race",
    description: json["description"] ?? "No description",
    image: json["image"] ?? "No image",
  );
}
