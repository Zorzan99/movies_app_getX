import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moviesapp/application/pages/movies/movies_controller.dart';
import 'package:moviesapp/application/pages/movies/widgets/movies_filter.dart';
import 'package:moviesapp/application/pages/movies/widgets/movies_group.dart';
import 'package:moviesapp/application/pages/movies/widgets/movies_header.dart';

class MoviesPage extends GetView<MoviesController> {
  const MoviesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      child: ListView(
        children: [
          const MoviesHeader(),
          const MoviesFilter(),
          MoviesGroup(
            title: 'Mais populares',
            movies: controller.popularMovies,
          ),
          MoviesGroup(
            title: 'Top filmes',
            movies: controller.topRatedMovies,
          ),
        ],
      ),
    );
  }
}
