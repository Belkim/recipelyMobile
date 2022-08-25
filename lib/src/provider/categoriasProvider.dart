// ignore_for_file: file_names

import 'dart:convert' show jsonDecode;

import 'package:flutter/services.dart' show rootBundle;

class _CategoriasProvider {
  List<dynamic> categorias = [];
  List<dynamic> recetasCategoria = [];
//recetas todas

//cargar la lista desde el json
  Future<List<dynamic>> cargarCategorias() async {
    final resp = await rootBundle.loadString("data/recetas.json");
    Map<String, dynamic> categoriasMap = jsonDecode(resp);
    categorias = categoriasMap["categorias"];

    return categorias;
  }

//receta una
//cargar la lista desde el json
  Future<List<dynamic>> cargarCategoria(String nombreCategoria) async {
    final resp = await rootBundle.loadString("data/recetas.json");
    Map<String, dynamic> categoriaMap = jsonDecode(resp);
    recetasCategoria = categoriaMap[nombreCategoria];

    return recetasCategoria;
  }
}

final categoriasProvider = _CategoriasProvider();
