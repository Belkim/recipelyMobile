import 'package:flutter/material.dart';
import 'package:recipely/src/styles/styles.dart';
import 'package:recipely/src/widgets/app_bar.dart';

class DetallePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: colorBG,
        body: CustomScrollView(
          slivers: <Widget>[],
        ));
  }
}
