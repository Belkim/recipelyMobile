import 'package:flutter/material.dart';
import 'package:recipely/src/provider/recetasprovider.dart';

List<Widget> recetasPopularesListado(BuildContext context) {
  final List<Widget> listadoRecetasPopulares = [];
  final List<dynamic> recetasPopulares = recetasProvider.recetasPopulares;
  // ignore: avoid_function_literals_in_foreach_calls
  recetasPopulares.forEach((recetaPopular) {
    final Widget widgetProv = _tarjeta(context, recetaPopular);
    listadoRecetasPopulares.add(widgetProv);
  });

  return listadoRecetasPopulares;
}

Widget _tarjeta(BuildContext context, Map<String, dynamic> receta) {
  return GestureDetector(
      //onTap: () {
      //  Navigator.pushNamed(context, "categoria", arguments: receta);
      //},
      child: Stack(
    children: [
      //imagen configuración
      Container(
          width: 300.0,
          height: 200.0,
          margin: const EdgeInsets.only(left: 25.0, top: 10.0),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image(
                image: NetworkImage(receta["foto"]),
                fit: BoxFit.cover,
              ))),
    ],
  ));
  //Container(
  //  margin: const EdgeInsets.only(left: 25.0),
  //  alignment: AlignmentDirectional.centerEnd,
  //  child: Image(
  //    image: NetworkImage(receta["foto"]),
  //    fit: BoxFit.fill,
  //  ),
  //);
}
