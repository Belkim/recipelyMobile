import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _RecetasProvider {
  List<dynamic> recetasPopulares = [];
//recetas todas

//cargar la lista desde el json
  Future<List<dynamic>> cargarRecetasPopulares() async {
    final resp = await rootBundle.loadString("data/recetas.json");
    Map<String, dynamic> recetasMap = jsonDecode(resp);
    recetasPopulares = recetasMap["recetasPopulares"];

    return recetasPopulares;
  }
}

final recetasProvider = _RecetasProvider();
