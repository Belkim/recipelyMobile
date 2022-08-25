import 'package:flutter/material.dart';
//estilos
import 'package:recipely/src/styles/styles.dart';
//widgets
import 'package:recipely/src/widgets/app_bar_detalle.dart';
import 'package:recipely/src/widgets/slider_categorias.dart';
import 'package:recipely/src/widgets/slider_ingredientes.dart';
import 'package:recipely/src/widgets/titles.dart';

class DetallePage extends StatelessWidget {
  const DetallePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> receta =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return Scaffold(
        backgroundColor: colorBG,
        body: CustomScrollView(
          slivers: <Widget>[
            appBarDetalle(receta["foto"]!),
            SliverList(
                delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.only(
                    top: 10.0, right: 8.0, bottom: 8.0, left: 12.0),
                child: _cuerpoReceta(receta, titlesRecipeStyleDetalle),
                //textoReceta(titlesRecipeStyleDetalle),
              ),
              const SizedBox(height: 20.0),
              titles("Ingredientes", titlesStyle),
              sliderIngredientes(receta["ingredientes"]),
              titles("Preparación", titlesStyle),
              _textoDescripcion(receta["preparacion"])
            ]))
          ],
        ));
  }
}

Widget _cuerpoReceta(Map<String, dynamic> receta, TextStyle estilos) {
  return Container(
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
        // ignore: avoid_unnecessary_containers
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
  );
}

Widget _textoDescripcion(String texto) {
  return Container(
      margin: const EdgeInsets.only(top: 5.0, left: 30.0, right: 30.0),
      child: Text(
        texto,
        textAlign: TextAlign.left,
        style: const TextStyle(
            fontFamily: "Avenir",
            fontWeight: FontWeight.normal,
            color: Color.fromRGBO(15, 55, 91, 1),
            fontSize: 13.0),
      ));
}
