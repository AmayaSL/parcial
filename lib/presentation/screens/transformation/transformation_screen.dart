import 'package:flutter/material.dart';
import 'package:parcial/entity/transformation_entity.dart';
import 'package:parcial/helpers/getTransformation.dart';

class TransformationScreen extends StatelessWidget {
  const TransformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final petition = GetTransformation();
    return FutureBuilder(
      future: petition.getTransformations(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return ListTransformation(transformations: snapshot.requireData);
      },
    );
  }
}

class ListTransformation extends StatelessWidget {
  ListTransformation({
    super.key,
    required this.transformations,
  });

  final List<TransformationEntity> transformations;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: transformations.length,
      itemBuilder: (context, index) {
        return Text(transformations[index].nombre.toString());
      },
    );
  }
}
