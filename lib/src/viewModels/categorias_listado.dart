import 'package:flutter/material.dart';
import 'package:recipely/src/provider/categoriasProvider.dart';

List<Widget> categoriasListado(BuildContext context) {
  final List<Widget> listadoCategoria = [];
  final List<dynamic> categorias = categoriasProvider.categorias;
  categorias.forEach((categoria) {
    final Widget widgetProv = _imagenCategoria(context, categoria);
    listadoCategoria.add(widgetProv);
  });

  return listadoCategoria;
}

Widget _imagenCategoria(BuildContext context, Map<String, dynamic> categoria) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, "categoria");
    },
    child: Container(
      child: Image(
        image: NetworkImage(categoria['foto']),
      ),
    ),
  );
}
