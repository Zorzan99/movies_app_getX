import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moviesapp/application/pages/movies/movies_controller.dart';
import 'package:moviesapp/application/pages/movies/widgets/filter_tag.dart';

class MoviesFilter extends GetView<MoviesController> {
  const MoviesFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Obx(
          () {
            return Row(
              children: controller.genres
                  .map(
                    (g) => FilterTag(
                      model: g,
                      onPressed: () {},
                      selected: false,
                    ),
                  )
                  .toList(),
            );
          },
        ),
      ),
    );
  }
}
