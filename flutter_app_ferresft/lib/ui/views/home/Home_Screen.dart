import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_app_ferresft/models/Pokemon.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  Pokemon? pokemon;
  int pokemonId = 0;

  @override
  void initState() {
    super.initState();
    getPokemon();
  }

  Future<void> getPokemon() async {
    pokemonId++;
    String request = 'https://pokeapi.co/api/v2/pokemon/$pokemonId';
    final response = await Dio().get(request);
    pokemon = Pokemon.fromJson(response.data);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HTTP REQUEST $pokemonId'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              if (pokemon != null) Text(pokemon?.name ?? 'Not Data'),
              const SizedBox(width: 10,),
              Row(
                children: [
                  Image.network(
                    pokemon!.sprites.frontDefault
                  ),
                  Image.network(pokemon!.sprites.backDefault)
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getPokemon, 
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
