// ignore_for_file: avoid_function_literals_in_foreach_calls

//import 'dart:convert';
//import 'package:firebase_core/firebase_core.dart';
//import 'package:flutter/services.dart' show rootBundle;
import 'package:cloud_firestore/cloud_firestore.dart';

class _RecetasProvider {
  List<dynamic> recetas = [];
  FirebaseFirestore firestore = FirebaseFirestore.instance;

//cargar desde cloud-firestore
  Future<List<dynamic>> cargarRecetas() async {
    final List<dynamic> recetasTempList = [];
    await firestore
        .collection("recetas")
        .get()
        .then((QuerySnapshot querySnapshot) => {
              querySnapshot.docs.forEach((doc) {
                Map<String, dynamic> recetasMap =
                    doc.data() as Map<String, dynamic>;
                recetasTempList.add(recetasMap);
              })
            });
    recetas = recetasTempList;
    return recetas;
  }

//cargar la lista desde el json
  //Future<List<dynamic>> cargarRecetas() async {
  //  final resp = await rootBundle.loadString("data/recetas.json");
  //  Map<String, dynamic> recetasMap = jsonDecode(resp);
  //  recetas = recetasMap["recetasPopulares"];
  //  return recetas;
  //}

//    Future<List<dynamic>> cargarRecetasPopulares() async {
//    final resp = await rootBundle.loadString("data/recetas.json");
//    Map<String, dynamic> recetasMap = jsonDecode(resp);
//    recetas = recetasMap["recetasPopulares"];
//    return recetas;
//  }
}

final recetasProvider = _RecetasProvider();
