import 'package:flutter/material.dart';
import 'package:recipely/src/styles/styles.dart';

Widget appBarDetalle(String foto) {
  return SliverAppBar(
    backgroundColor: colorBG,
    expandedHeight: 200.0,
    floating: false,
    pinned: true,
    elevation: 20.0,
    iconTheme: IconThemeData(color: colorIconsAppBar),
    flexibleSpace: FlexibleSpaceBar(
        background: FadeInImage(
            placeholder: NetworkImage(foto),
            image: NetworkImage(foto),
            fadeInDuration: const Duration(milliseconds: 150),
            fit: BoxFit.cover)),
  );
}
