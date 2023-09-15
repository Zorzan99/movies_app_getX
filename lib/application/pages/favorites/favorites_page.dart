import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moviesapp/application/pages/favorites/favorites_controller.dart';
import 'package:moviesapp/application/ui/widgets/movie_card.dart';

class FavoritesPage extends GetView<FavoritesController> {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favoritos'),
        automaticallyImplyLeading: false,
      ),
      body: Obx(
        () {
          return SingleChildScrollView(
            child: SizedBox(
              width: Get.width,
              child: Wrap(
                alignment: WrapAlignment.spaceAround,
                children: controller.movies
                    .map((m) => MovieCard(
                          movies: m,
                          favoriteCallBack: () => controller.removeFavorite(m),
                        ))
                    .toList(),
              ),
            ),
          );
        },
      ),
    );
  }
}
