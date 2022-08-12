import 'package:flutter/material.dart';
import 'package:recipely/src/styles/styles.dart';

Widget textoReceta(){
  return Column(
    children: <Widget>[
      Container(
        alignment: AlignmentDirectional.topStart,
        margin: const EdgeInsets.only(left: 30.0,top: 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Marsala Marinated Skirt Steak', 
              textAlign: TextAlign.left,
              style: titlesRecipeStyle,
            ),
            Text(
              'lorep ipsum',
              textAlign: TextAlign.left,
              style: descripRecipeStyle,
            ),
            const SizedBox(
              height: 5.0,
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.alarm,
                          color: colorIcons
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 5.0),
                          child: Text(
                            '45 min',
                            style: TextStyle(
                              fontFamily: 'Avenir',
                              fontWeight: FontWeight.bold,
                              color: colorTitle,
                              fontSize: 14.0
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.auto_graph,
                          color: colorIcons
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 5.0),
                          child: Text(
                            'Medio',
                            style: TextStyle(
                              fontFamily: 'Avenir',
                              fontWeight: FontWeight.bold,
                              color: colorTitle,
                              fontSize: 14.0
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )
    ],
  );
}