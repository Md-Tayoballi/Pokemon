import 'package:flutter/material.dart';
import 'package:practiceflutter/Widgets/pokemon_card.dart';
import 'package:practiceflutter/pokemon_datasourse.dart';

import '../Widgets/my_tital.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});

  List pokemonData = pokemonDatasource.pokemons;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MD.Tayob alli", style: TextStyle(color: Colors.black,),),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: const [
          Icon(
            Icons.bento_outlined,
            color: Colors.black,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12.0,
          vertical: 12.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MyTital(
              mytext: "Pokedex",
              color: Colors.black,
            ),
            Expanded(
              flex: 13,
              child: GridView.builder(
                itemCount:pokemonData.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 4 / 3,
                  crossAxisSpacing: 12.0,
                  mainAxisSpacing: 12.0,
                ),
                itemBuilder: (context, index) {
                  // var type = pokemonData[index]['type']!=null?pokemonData[index]['type'];
                 return pokemoncard(
                      colors: const Color(0xff4ad0b0),
                      name:pokemonData[index]["name"],
                      types:pokemonData[index]["type"],
                      imageUrl:pokemonData[index]["img"],
                     pokemonMap: pokemonData[index],

                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
