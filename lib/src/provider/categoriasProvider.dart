import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _CategoriasProvider {
  List<dynamic> categorias = [];
//recetas todas

//cargar la lista desde el json
  Future<List<dynamic>> cargarCategorias() async {
    final resp = await rootBundle.loadString("data/recetas.json");
    Map<String, dynamic> categoriasMap = jsonDecode(resp);
    categorias = categoriasMap["categorias"];

    return categorias;
  }
}

final categoriasProvider = _CategoriasProvider();
