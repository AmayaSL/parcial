class PlanetEntity {
  final int id;
  final String? name;
  final bool isDestroyed;
  final String? description;
  final String? image;
  final List<dynamic> characters; 

  PlanetEntity({
    required this.id,
    required this.name,
    required this.isDestroyed,
    this.description,
    this.image,
    required this.characters, 
  });
}
