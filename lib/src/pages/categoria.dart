import 'package:flutter/material.dart';
//Provider
import 'package:recipely/src/provider/categoriasProvider.dart';
//estilos
import 'package:recipely/src/styles/styles.dart';
//viewModels
import 'package:recipely/src/viewModels/recetas_listado.dart';
//widgets
import 'package:recipely/src/widgets/app_bar_categoria.dart';
import 'package:recipely/src/widgets/slider_populares.dart';
import 'package:recipely/src/widgets/titles.dart';

class CategoriaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> categoria =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return Scaffold(
        backgroundColor: colorBG,
        body: CustomScrollView(
          slivers: <Widget>[
            appBarCategoria("Recetas de " + categoria["nombre"]),
            SliverList(
                delegate: SliverChildListDelegate([
              titles(categoria["nombre"], titlesStyleCategoria),
              //?El swiper está comentado para ver si se lo deja o no
              sliderPopulares(),
              titles("Lista de " + categoria["nombre"], titlesStyleCategoria),
              FutureBuilder(
                future: categoriasProvider.cargarCategoria(categoria["nombre"]),
                initialData: const [],
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  return Column(
                    children: recetasListado(context, snapshot.data!),
                  );
                },
              )
              //recetasListado(context),
            ]))
          ],
        ));
  }
}
