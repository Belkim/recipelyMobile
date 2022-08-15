import 'package:flutter/material.dart';
import 'package:recipely/src/styles/styles.dart';

Widget appBarDetalle(String title) {
  return SliverAppBar(
    backgroundColor: colorBG,
    expandedHeight: 200.0,
    floating: false,
    pinned: true,
    title: Text(
      title,
      style: TextStyle(
        fontFamily: 'PlayfairDisplay-Bold',
        fontWeight: FontWeight.bold,
        color: colorTitle,
      ),
    ),
    elevation: 20.0,
    iconTheme: IconThemeData(color: colorIconsAppBar),
    flexibleSpace: const FlexibleSpaceBar(
        background: FadeInImage(
            placeholder: AssetImage("assets/receta1.png"),
            image: AssetImage("assets/receta1.png"),
            fadeInDuration: Duration(milliseconds: 150),
            fit: BoxFit.cover)),
  );
}
