import 'package:flutter/material.dart';
//provider
import 'package:recipely/src/provider/recetasprovider.dart';
//styles
import 'package:recipely/src/styles/styles.dart';
//widgets
import 'package:recipely/src/widgets/app_bar.dart';
import 'package:recipely/src/widgets/menu_lateral.dart';
import 'package:recipely/src/widgets/slider_categorias.dart';
import 'package:recipely/src/widgets/slider_populares.dart';
import 'package:recipely/src/widgets/titles.dart';
//viewModels
import 'package:recipely/src/viewModels/recetas_listado.dart';

class HomePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: menuLateral(context),
        key: _scaffoldKey,
        backgroundColor: colorBG,
        body: CustomScrollView(
          slivers: <Widget>[
            appBar(context, _scaffoldKey),
            SliverList(
                delegate: SliverChildListDelegate([
              Column(
                children: <Widget>[
                  sliderPopulares(),
                  titles('Categorías', titlesStyle),
                  sliderCategorias(),
                  titles('Recetas Populares', titlesStyle),
                  //Procesamos el future del provider
                  FutureBuilder(
                    future: recetasProvider.cargarRecetasPopulares(),
                    initialData: [],
                    builder: (BuildContext context,
                        AsyncSnapshot<List<dynamic>> snapshot) {
                      return Column(
                          children: recetasListado(context, snapshot.data!));
                    },
                  ),
                  //recetasListado(context),
                ],
              )
            ]))
          ],
        ));
  }
}
