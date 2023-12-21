import 'package:flutter/material.dart';
import 'package:practiceflutter/Widgets/power_badge.dart';

import 'details_page.dart';

class pokemoncard extends StatelessWidget {
  final colors;
  final String name;
  final String imageUrl;
  final List types;
  final Map pokemonMap;



  const pokemoncard(
      {super.key,
      required this.colors,
      required this.name,
      required this.imageUrl,
      required this.types,
        required this.pokemonMap,


     });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => DetailsPage(data:pokemonMap,types: [],),
          ),
        );
      },
      child: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              color: colors,
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "$name",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  PowerBaged(
                    tital: '${types[0]}',
                  ),
                  if (types.length > 1)
                    PowerBaged(
                      tital: '${types[1]}',
                    ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Hero(
              tag: "pokemon1-${name}",
              child: Image.network(
                '${imageUrl}',
                width: 120.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
