import 'package:flutter/material.dart';
import 'package:flutterdex/screens/poke_detail_screen.dart';

class SearchBarPokemon extends StatefulWidget {
  @override
  
   _SearchBarPokemonState createState() => _SearchBarPokemonState();
}
class _SearchBarPokemonState extends State<SearchBarPokemon> {
  final _textController = TextEditingController();
  bool _validate = false;

  @override
  void dispose() {
    super.dispose();
    _textController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 25),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        
        keyboardType: TextInputType.number,
        style: TextStyle(color: Colors.black),
        maxLines: 1,
        controller: _textController,
        decoration: InputDecoration(
          hintStyle: TextStyle(color: Colors.grey[600]),
          errorText: _validate ? 'Error Message' : null,
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          icon: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          hintText: "Search Pokémon ",
        ),
        onSubmitted: (value) {
          if (value.isNotEmpty) {
            Navigator.of(context)
                .pushNamed(PokeDetailScreen.routeName, arguments: value);
          }
        },
      ),
    );
  }
}
