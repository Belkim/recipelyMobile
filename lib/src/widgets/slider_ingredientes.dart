import 'package:flutter/material.dart';

import 'package:flutter_swiper/flutter_swiper.dart';

final controller = PageController(initialPage: 1, viewportFraction: 0.3);

Widget sliderIngredientes(BuildContext context) {
  return Container(
      height: 120.0,
      padding: const EdgeInsets.only(left: 5.0),
      child: Swiper(
          itemCount: 1,
          layout: SwiperLayout.DEFAULT,
          itemBuilder: (BuildContext context, int index) {
            return PageView(
                controller: controller,
                children: [_imagen(), _imagen(), _imagen(), _imagen()]);
          }));
}

Widget _imagen() {
  return const Center(
      child: Image(
          alignment: Alignment.topLeft,
          image: AssetImage('assets/ingrediente1.png')));
}
