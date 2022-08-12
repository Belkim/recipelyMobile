import 'package:flutter/material.dart';
import 'package:recipely/src/widgets/texto_receta.dart';

Widget recetasListado(){
  return Column(
    children: <Widget>[
      const SizedBox(
        height: 20.0,
      ),
      GestureDetector(
        onTap: (){
          print('Voy para allá');
        },
        child: const Image(
          image: AssetImage('assets/recipe-slider1.png'),
          fit: BoxFit.fill,
          width: 380.0,
          height: 140.0,
        ),
      ),
      textoReceta()
    ],
  );
}
