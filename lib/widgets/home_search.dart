import 'package:flutter/material.dart';

import 'search_bar.dart';

class HomeSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Pokémon',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 35,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              'Search Pokémon using the Pokédex number (1-893).',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                 
                fontSize: 17,
                color: Colors.grey[600],
                
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          SearchBarPokemon(),
        ],
      ),
    );
  }
}
