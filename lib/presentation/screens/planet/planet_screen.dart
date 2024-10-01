import 'package:flutter/material.dart';
import 'package:parcial/entity/planet_entity.dart';
import 'package:parcial/helpers/getPlanet.dart';

class PlanetScreen extends StatelessWidget {
  const PlanetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final petition = GetPlanet();
    return FutureBuilder(
      future: petition.getPlanets(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return ListPlanet(planets: snapshot.requireData);
      },
    );
  }
}

class ListPlanet extends StatelessWidget {
  ListPlanet({
    super.key,
    required this.planets,
  });

  final List<PlanetEntity> planets;


    @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: planets.length,
      itemBuilder: (context, index) {
        return Card(
          color: Colors.green[100], // Cambia el color como desees
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 100, // Ancho fijo
                  height: 100, // Alto fijo
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(planets[index].image ?? ''),
                      fit: BoxFit.cover, // Ajusta la imagen para que ocupe todo el contenedor
                    ),
                    borderRadius: BorderRadius.circular(8), // Opcional: bordes redondeados
                  ),
                ),
                const SizedBox(height: 8), 
                Text(
                  planets[index].name.toString(),
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text("Is Destroyed: ${planets[index].isDestroyed}"),
                Text(planets[index].description.toString()),
                if (planets[index].characters.isNotEmpty) 
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 8), // Espacio antes de la lista de personajes
                      const Text("Characters:", style: TextStyle(fontWeight: FontWeight.bold)),
                      ...planets[index].characters.map((character) => Text(character)).toList(),
                    ],
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}
