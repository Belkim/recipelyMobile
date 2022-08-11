import 'package:flutter/material.dart';
import 'package:recipely/src/styles/styles.dart';
import 'package:recipely/src/widgets/app_bar.dart';
import 'package:recipely/src/widgets/menu_lateral.dart';
import 'package:recipely/src/widgets/slider_categorias.dart';
import 'package:recipely/src/widgets/slider_populares.dart';
import 'package:recipely/src/widgets/titles.dart';

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
            delegate: SliverChildListDelegate(
              [
                Column(
                  children: <Widget> [
                    sliderPopulares(),
                    titles('Categorías'),
                    sliderCategorias(),
                    titles('Recetas Populares'),
                  ],
                )
              ]
            )
          )
        ],
      )
    );
  }
}