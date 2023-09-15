import 'package:get/get.dart';
import 'package:moviesapp/application/pages/movies/movies_controller.dart';
import 'package:moviesapp/repositories/genres/genres_repository.dart';
import 'package:moviesapp/repositories/genres/genres_repository_impl.dart';
import 'package:moviesapp/services/genres/genres_service.dart';
import 'package:moviesapp/services/genres/genres_service_impl.dart';

class MoviesBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GenresRepository>(
      () => GenresRepositoryImpl(
        restClient: Get.find(),
      ),
    );
    Get.lazyPut<GenresService>(
      () => GenresServiceImpl(
        genresRepository: Get.find(),
      ),
    );
    Get.lazyPut(
      () => MoviesController(
        genresService: Get.find(),
        moviesService: Get.find(),
        authService: Get.find(),
      ),
    );
  }
}
