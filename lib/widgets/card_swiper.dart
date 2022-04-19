import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:peliculas/theme/theme.dart';

class CardSwiper extends StatelessWidget {
  const CardSwiper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    List lista = [1, 2, 3, 45];
    return Container(
      width: double.infinity,
      height: size.height * 0.5,
      child: CarouselSlider(
          options: CarouselOptions(disableCenter: true),
          items: lista
              .map((i) => const FadeInImage(
                    placeholder: AssetImage('assets/no-image.jpg'),
                    image: NetworkImage('https://via.placeholder.com/300x400'),
                  ))
              .toList()),
    );
  }
}
