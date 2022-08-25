import 'package:flutter/material.dart';
//Estilos
import 'package:recipely/src/styles/styles.dart';

class RecetasSearchDelegate extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () {
            query = "";
          })
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text("Hola res");
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: const Text(
        "Busca la receta que necesitas...",
        style: descripRecipeStyle,
      ),
    );
  }
}
