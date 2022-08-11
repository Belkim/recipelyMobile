import 'package:flutter/material.dart';

import 'package:flutter_swiper/flutter_swiper.dart';


class sliderCategorias extends StatelessWidget{

  final controller = PageController(
    initialPage: 1,
    viewportFraction: 0.3
  );

  @override
  Widget build(BuildContext context){
    return Container(
      height: 110.0,
      child: Swiper(
        itemBuilder: (BuildContext context, int index){
          return PageView(
            controller: controller,
            children: <Widget>[
              _imagenCategoria(),
              _imagenCategoria(),
              _imagenCategoria(),
              _imagenCategoria()
            ],
          );
        },
        itemCount: 3,
        layout: SwiperLayout.DEFAULT,
      ),
    );
  }
}

Widget _imagenCategoria(){
  return GestureDetector(
    onTap: (){
      print('Voy a categoria');
    },
    child: Container(
      child: const Image(
        image: AssetImage('assets/categoria1.png'),
      ),
    ),
  );
}