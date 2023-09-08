import 'package:get/get.dart';
import 'package:moviesapp/application/pages/splash/splash_controller.dart';

class SplashBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(SplashController());
  }
}
