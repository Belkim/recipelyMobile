import 'package:flutter/material.dart';
import 'package:recipely/categoria.dart';
import 'package:recipely/detalle.dart';
import 'package:recipely/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder> {
        '/' : ( BuildContext context ) => HomePage(),
        '/categoria' : ( BuildContext context ) => CategoriaPage(),
        '/detalle' : ( BuildContext context ) => DetallePage(),
      },
    );
  }
}