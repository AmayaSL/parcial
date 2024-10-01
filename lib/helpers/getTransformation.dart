import 'package:dio/dio.dart';
import 'package:parcial/entity/transformation_entity.dart';
import 'package:parcial/models/transformation.dart';

class GetTransformation {
  static const url = "https://dragonball-api.com/api";

  final _dio = Dio();

  Future<List<TransformationEntity>> getTransformations() async {
    final response = await _dio.get("$url/characters/");
    final temp = response.data["transformations"] as List;
    List<TransformationEntity> transformations = [];
    Transformation transformationModel;

    for (var i = 0; i < temp.length; i++) {
      transformationModel = Transformation.fromJsonMap(temp[i]);
      transformations.add(TransformationEntity(
        id: transformationModel.id,
        nombre: transformationModel.name,
        descripcion: transformationModel.description,
        img: transformationModel.image,
      ));
    }

    return transformations;
  }
}


