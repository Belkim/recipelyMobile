import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_swiper/flutter_swiper.dart';

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
          return PageView(
            controller: controller,
            children: <Widget>[_tarjeta(), _tarjeta(), _tarjeta(), _tarjeta()],
          );
        },
        itemCount: 2,
        //itemWidth: 600.0,
        //itemHeight: 600.0,
        layout: SwiperLayout.DEFAULT,
      ),
    );
  }
}

Widget _tarjeta() {
  return Container(
    margin: const EdgeInsets.only(left: 25.0),
    alignment: AlignmentDirectional.centerEnd,
    child: const Image(
      image: AssetImage('assets/recipe-slider1.png'),
      fit: BoxFit.fill,
    ),
  );
}
