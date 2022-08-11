import 'package:flutter/material.dart';
import 'package:recipely/src/styles/styles.dart';

Widget titles( String texto ){
  return Container(
    alignment: AlignmentDirectional.topStart,
    margin: const EdgeInsets.only(left: 30.0),
    child: Text(
      texto,
      style: titlesStyle,
    )
  );
}