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
      child: Stack(
        children: [
          //imagen configuración
          Container(
              width: 130.0,
              height: 100.0,
              margin: const EdgeInsets.only(right: 10.0, top: 5.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image(
                    image: NetworkImage(categoria["foto"]),
                    fit: BoxFit.cover,
                  ))),
          //texto dentro de la imagen configuración
          Container(
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.only(left: 0, bottom: 15.0),
            child: Text(
              categoria["nombre"],
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  decorationColor: Colors.black,
                  decorationStyle: TextDecorationStyle.wavy),
            ),
          )
        ],
      ));
}
