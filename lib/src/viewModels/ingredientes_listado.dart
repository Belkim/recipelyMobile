import 'package:flutter/material.dart';

List<Widget> ingredientesListado(List<dynamic> ingredientes) {
  final List<Widget> listadoIngredientes = [];
  final List<dynamic> ingredientesListado = ingredientes;
  // ignore: avoid_function_literals_in_foreach_calls
  ingredientesListado.forEach((ingrediente) {
    final Widget widgetProv = _imagenIngrediente(ingrediente);
    listadoIngredientes.add(widgetProv);
  });

  return listadoIngredientes;
}

Widget _imagenIngrediente(Map<String, dynamic> ingrediente) {
  return Center(
    child: Stack(
      children: [
        //para la imagen
        Container(
          width: 130.0,
          height: 100.0,
          margin: const EdgeInsets.only(right: 10.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image(
                image: NetworkImage(ingrediente["fotoIngrediente"]),
                fit: BoxFit.cover),
          ),
        ),
        //para el texto
        Container(
          alignment: Alignment.bottomLeft,
          padding: const EdgeInsets.all(20.0),
          child: Text(
            //parametro q recibo ["nombre en el JSON"]
            ingrediente["ingrediente"],
            style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                      blurRadius: 10.0,
                      color: Colors.black,
                      offset: Offset(5.0, 5.0))
                ]),
          ),
        )
      ],
    ),
  );
}
