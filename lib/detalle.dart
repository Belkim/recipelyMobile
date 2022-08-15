import 'package:flutter/material.dart';
import 'package:recipely/src/styles/styles.dart';
import 'package:recipely/src/widgets/app_bar_detalle.dart';
import 'package:recipely/src/widgets/slider_categorias.dart';
import 'package:recipely/src/widgets/texto_receta.dart';
import 'package:recipely/src/widgets/titles.dart';

class DetallePage extends StatelessWidget {
  final String descripcion =
      "La descripción del proceso de preparación de lo que sea que se vaya a hacer ashdfjlhasglas as gas ga g asgbanbga bamb as,m ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: colorBG,
        body: CustomScrollView(
          slivers: <Widget>[
            appBarDetalle(""),
            SliverList(
                delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.only(
                    top: 10.0, right: 8.0, bottom: 8.0, left: 12.0),
                child: textoReceta(titlesRecipeStyleDetalle),
              ),
              const SizedBox(height: 20.0),
              titles("Ingredientes", titlesStyle),
              sliderCategorias(),
              titles("Preparación", titlesStyle),
              _textoDescripcion(descripcion)
            ]))
          ],
        ));
  }
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
