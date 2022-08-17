import 'package:flutter/material.dart';
import 'package:recipely/src/styles/styles.dart';

import 'package:recipely/src/widgets/app_bar_categoria.dart';
import 'package:recipely/src/widgets/receta_listado.dart';
import 'package:recipely/src/widgets/slider_populares.dart';
import 'package:recipely/src/widgets/titles.dart';

class CategoriaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: colorBG,
        body: CustomScrollView(
          slivers: <Widget>[
            appBarCategoria("Pizza"),
            SliverList(
                delegate: SliverChildListDelegate([
              titles("Recetas Populares", titlesStyleCategoria),
              //?El swiper está comentado para ver si se lo deja o no
              sliderPopulares(),
              titles("Lista de Recetas", titlesStyleCategoria),
              recetasListado(context),
              recetasListado(context),
              recetasListado(context),
              recetasListado(context),
              recetasListado(context),
              recetasListado(context)
            ]))
          ],
        ));
  }
}
