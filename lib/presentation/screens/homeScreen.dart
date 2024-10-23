import 'package:flutter/material.dart';
import 'package:parcial/presentation/widgets/drawer.dart';

class HomeScreen extends StatelessWidget {
  static const name = "home_screen";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Text("Welcome to DBZ API"),
      ),
      drawer: Menu(),
    );
  }
}
