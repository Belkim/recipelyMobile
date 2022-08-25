import 'package:flutter/material.dart';
//swiper
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_swiper/flutter_swiper.dart';
//provider
import 'package:recipely/src/provider/categoriasProvider.dart';
//viewModels
import 'package:recipely/src/viewModels/categorias_listado.dart';

// ignore: use_key_in_widget_constructors
class SliderCategorias extends StatelessWidget {
  final controller = PageController(initialPage: 1, viewportFraction: 0.3);

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: 110.0,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return FutureBuilder(
              future: categoriasProvider.cargarCategorias(),
              initialData: const [],
              builder: (BuildContext context,
                  AsyncSnapshot<List<dynamic>> snapshot) {
                return PageView(
                    controller: controller,
                    children: categoriasListado(context));
              });
        },
        itemCount: 3,
        layout: SwiperLayout.DEFAULT,
      ),
    );
  }
}
