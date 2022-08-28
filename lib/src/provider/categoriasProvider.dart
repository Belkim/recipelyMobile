// ignore_for_file: file_names, avoid_function_literals_in_foreach_calls

//import 'dart:convert' show jsonDecode;
//import 'package:flutter/services.dart' show rootBundle;

import 'package:cloud_firestore/cloud_firestore.dart';

class _CategoriasProvider {
  List<dynamic> categorias = [];
  List<dynamic> recetasCategoria = [];
  //firebase instacia
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  //obtención de datos desde cloud-firestore para la lista de categorias
  Future<List<dynamic>> cargarCategorias() async {
    final List<dynamic> categoriasTempList = [];
    await firestore
        .collection("categorias")
        .get()
        .then((QuerySnapshot querySnapshot) => {
              querySnapshot.docs.forEach((doc) {
                Map<String, dynamic> categoriasMap =
                    doc.data() as Map<String, dynamic>;
                categoriasTempList.add(categoriasMap);
              })
            });
    categorias = categoriasTempList;
    return categorias;
  }

  //obtención de datos desde cloud-firestore para la lista de Categoria Individual
  Future<List<dynamic>> cargarCategoria(String nombreCategoria) async {
    final List<dynamic> categoriaTempList = [];
    await firestore
        .collection(nombreCategoria)
        .get()
        .then((QuerySnapshot querySnapshot) => {
              querySnapshot.docs.forEach((doc) {
                Map<String, dynamic> categoriaMap =
                    doc.data() as Map<String, dynamic>;
                categoriaTempList.add(categoriaMap);
              })
            });
    recetasCategoria = categoriaTempList;
    return recetasCategoria;
  }
// ?cargar la lista desde el json de grupo de categorías
/*  Future<List<dynamic>> cargarCategorias() async {
    final resp = await rootBundle.loadString("data/recetas.json");
    Map<String, dynamic> categoriasMap = jsonDecode(resp);
    categorias = categoriasMap["categorias"];

    return categorias;
  }


  ?cargar la lista desde el json de categoría individual
  Future<List<dynamic>> cargarCategoria(String nombreCategoria) async {
    final resp = await rootBundle.loadString("data/recetas.json");
    Map<String, dynamic> categoriaMap = jsonDecode(resp);
    recetasCategoria = categoriaMap[nombreCategoria];

    return recetasCategoria;
  }*/
}

final categoriasProvider = _CategoriasProvider();
