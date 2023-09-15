import 'package:get/get.dart';
import 'package:moviesapp/application/pages/favorites/favorites_controller.dart';

class FavoritesBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(
      FavoritesController(
        moviesService: Get.find(),
        authService: Get.find(),
      ),
    );
  }
}
