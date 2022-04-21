import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:peliculas/models/movie.dart';
import 'package:peliculas/theme/theme.dart';

class CardSwiper extends StatelessWidget {
  const CardSwiper({
    Key? key,
    required this.movies,
  }) : super(key: key);

  final List<Movies> movies;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    List lista = [];
    movies.forEach((element) {
      lista.add(element.fullPosterImg);
    });
    return Container(
      width: double.infinity,
      height: size.height * 0.5,
      child: CarouselSlider(
          options: CarouselOptions(disableCenter: true),
          items: lista.map((i) {
            return GestureDetector(
              onTap: () => Navigator.pushNamed(context, 'details',
                  arguments: 'movie-instance'),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: FadeInImage(
                    image: NetworkImage(i),
                    placeholder:
                        NetworkImage('https://via.placeholder.com/300x400'),
                  )),
            );
          }).toList()),
    );
  }
}
