import 'package:flutter/material.dart';
import 'package:recipely/src/provider/recetasprovider.dart';
//Estilos
import 'package:recipely/src/styles/styles.dart';
import 'package:recipely/src/viewModels/recetas_buscador_resultados.dart';

class RecetasSearchDelegate extends SearchDelegate {
  @override
  ThemeData appBarTheme(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return theme.copyWith(
        primaryColor: theme.primaryColorLight,
        primaryIconTheme: theme.primaryIconTheme,
        primaryTextTheme: theme.primaryTextTheme,
        inputDecorationTheme: theme.inputDecorationTheme.copyWith(
            hintStyle:
                const TextStyle(color: Color.fromARGB(209, 255, 255, 255))));
  }

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
    return FutureBuilder(
      future: recetasProvider.cargarRecetas(),
      initialData: const [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        List<dynamic> recetas = snapshot.data!;
        //receta q escribio
        var recetaBuscada = query.toLowerCase();

        return CustomScrollView(
          slivers: [
            SliverList(
                delegate: SliverChildListDelegate([
              Column(
                  children:
                      recetasListadoBuscador(context, recetas, recetaBuscada))
            ]))
          ],
        );
      },
    );
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
