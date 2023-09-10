import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moviesapp/application/pages/movies/widgets/movies_filter.dart';
import 'package:moviesapp/application/pages/movies/widgets/movies_group.dart';
import 'package:moviesapp/application/pages/movies/widgets/movies_header.dart';

class MoviesPage extends StatelessWidget {
  const MoviesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      child: ListView(
        children: const [
          MoviesHeader(),
          MoviesFilter(),
          MoviesGroup(
            title: 'Mais populares',
          ),
        ],
      ),
    );
  }
}
