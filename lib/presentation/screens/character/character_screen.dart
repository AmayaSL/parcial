import 'package:flutter/material.dart';
import 'package:parcial/entity/character_entity.dart';
import 'package:parcial/helpers/getCharacter.dart';

class CharacterScreen extends StatelessWidget {
  const CharacterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final petition = getCharacter();
    return FutureBuilder(
      future: petition.getPJ(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return ListCharacter(character: snapshot.requireData);
      },
    );
  }
}

class ListCharacter extends StatelessWidget {
  ListCharacter({
    super.key,
    required this.character,
  });

  final List<CharacterEntity> character;

  @override
Widget build(BuildContext context) {
  return ListView.builder(
    itemCount: character.length,
    itemBuilder: (context, index) {
      return Card(
          margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              character[index].nombre.toString(),
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          )
      );
    },
  );
}

}
