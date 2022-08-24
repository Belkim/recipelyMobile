// ignore_for_file: avoid_function_literals_in_foreach_calls

import 'package:flutter/material.dart';
//estilos
import 'package:recipely/src/styles/styles.dart';

List<Widget> recetasListado(
    BuildContext context, List<dynamic> recetasPopulares) {
  final List<Widget> listadoRecetas = [];

  recetasPopulares.forEach((receta) {
    final listadoWidgetProvisional =
        _cuerpoRecetaListado(context, titlesRecipeStyle, receta);
    listadoRecetas.add(listadoWidgetProvisional);
  });
  return listadoRecetas;
}

Widget _cuerpoRecetaListado(
    BuildContext context, TextStyle estilos, Map<String, dynamic> receta) {
  return Column(
    children: <Widget>[
      const SizedBox(
        height: 20.0,
      ),
      GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, "detalle", arguments: receta);
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image(
            image: NetworkImage(receta['foto']),
            fit: BoxFit.fill,
            width: 300.0,
            height: 140.0,
          ),
        ),
      ),
      Container(
        alignment: AlignmentDirectional.topStart,
        margin: const EdgeInsets.only(left: 30.0, top: 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              receta['titulo'],
              textAlign: TextAlign.left,
              style: estilos,
            ),
            Text(
              receta['descripcion'],
              textAlign: TextAlign.left,
              style: descripRecipeStyle,
            ),
            const SizedBox(
              height: 5.0,
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.alarm, color: colorIcons),
                        Container(
                          margin: const EdgeInsets.only(left: 5.0),
                          child: Text(
                            receta['duracion'],
                            style: TextStyle(
                                fontFamily: 'Avenir',
                                fontWeight: FontWeight.bold,
                                color: colorTitle,
                                fontSize: 14.0),
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.auto_graph, color: colorIcons),
                        Container(
                          margin: const EdgeInsets.only(left: 5.0),
                          child: Text(
                            receta['dificultad'],
                            style: TextStyle(
                                fontFamily: 'Avenir',
                                fontWeight: FontWeight.bold,
                                color: colorTitle,
                                fontSize: 14.0),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )
    ],
  );
}
