import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moviesapp/application/pages/movie_detail/movie_detail_controller.dart';
import 'package:moviesapp/models/movie_detail_model.dart';

class MovieDetailHeader extends GetView<MovieDetailController> {
  final MovieDetailModel? movie;

  const MovieDetailHeader({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (movie != null) {
      return SizedBox(
        height: 278,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: movie!.urlImages.length,
          itemBuilder: (context, index) {
            final image = movie!.urlImages[index];
            return Padding(
              padding: const EdgeInsets.all(2),
              child: Image.network(image),
            );
          },
        ),
      );
    } else {
      return const SizedBox.shrink();
    }
  }
}
