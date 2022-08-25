import 'package:flutter/material.dart';
//slider
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_swiper/flutter_swiper.dart';

//viewModel
import 'package:recipely/src/viewModels/ingredientes_listado.dart';

final controller = PageController(initialPage: 1, viewportFraction: 0.3);

Widget sliderIngredientes(List<dynamic> ingredientes) {
  return Container(
      height: 120.0,
      padding: const EdgeInsets.only(left: 5.0),
      child: Swiper(
          itemCount: 1,
          layout: SwiperLayout.DEFAULT,
          itemBuilder: (BuildContext context, int index) {
            return PageView(
                controller: controller,
                children: ingredientesListado(ingredientes));
          }));
}
