import 'package:flutter/material.dart';
import 'package:recipely/src/styles/styles.dart';

Widget appBarCategoria(String title) {
  return SliverAppBar(
      backgroundColor: colorBG,
      floating: false,
      pinned: true,
      title: Text(
        title,
        style: const TextStyle(
          fontFamily: 'PlayfairDisplay-Bold',
          fontWeight: FontWeight.bold,
          color: colorTitle,
        ),
      ),
      elevation: 0.0,
      iconTheme: const IconThemeData(color: colorIconsAppBar));
}
