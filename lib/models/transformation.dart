class Transformation {
  final int id;
  final String? name;
  final String? description;
  final String? image;

  Transformation({
    required this.id,
    this.name,
    this.description,
    this.image,
  });

  factory Transformation.fromJsonMap(Map<dynamic, dynamic> json) => Transformation(
      id: json["id"],
      name: json["name"] ?? "No name",
      description: json["description"] ?? "No description",
      image: json["image"] ?? "No image");
}
