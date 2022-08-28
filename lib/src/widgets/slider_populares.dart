import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:recipely/src/provider/recetasprovider.dart';
import 'package:recipely/src/viewModels/recetas_populares_listado.dart';

// ignore: camel_case_types, use_key_in_widget_constructors
class sliderPopulares extends StatelessWidget {
  final controller = PageController(initialPage: 1, viewportFraction: 1);

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: 250.0,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return FutureBuilder(
              future: recetasProvider.cargarRecetasPopulares(),
              initialData: const [],
              builder: (BuildContext context,
                  AsyncSnapshot<List<dynamic>> snapshot) {
                return PageView(
                    controller: controller,
                    children: recetasPopularesListado(context)
                );
              });
        },
        itemCount: 2,
        //itemWidth: 600.0,
        //itemHeight: 600.0,
        layout: SwiperLayout.DEFAULT,
      ),
    );
  }
}
