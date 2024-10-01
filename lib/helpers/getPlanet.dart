import 'package:dio/dio.dart';
import 'package:parcial/entity/planet_entity.dart';
import 'package:parcial/models/planet.dart';

class GetPlanet {
  static const url = "https://dragonball-api.com/api";

  final _dio = Dio();

  Future<List<PlanetEntity>> getPlanets() async {
    final response = await _dio.get("$url/planets");
    final temp = response.data["items"];
    List<PlanetEntity> planets = [];
    Planet planetModel;

    for (var i = 0; i < temp.length; i++) {
      planetModel = Planet.fromJsonMap(temp[i]);
      planets.add(PlanetEntity(
        id: planetModel.id,
        name: planetModel.name,
        isDestroyed: planetModel.isDestroyed,
        description: planetModel.description,
        image: planetModel.image,
        characters: planetModel.characters, 
      ));
    }

    return planets;
  }
}

