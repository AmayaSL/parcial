class Planet {
  final int id;
  final String? name;
  final bool isDestroyed;
  final String? description;
  final String? image;
  final List<dynamic> characters; 

  Planet({
    required this.id,
    required this.name,
    required this.isDestroyed,
    this.description,
    this.image,
    required this.characters, 
  });

  factory Planet.fromJsonMap(Map<dynamic, dynamic> json) => Planet(
  id: json["id"],
  name: json["name"] ?? "No name",
  isDestroyed: json["isDestroyed"] ?? false,
  description: json["description"] ?? "No description",
  image: json["image"] ?? "No image",
  characters: json["characters"] ?? [],
);
}
