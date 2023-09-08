import 'package:get/get.dart';
import 'package:moviesapp/application/pages/login/login_controller.dart';

class LoginBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController(loginService: Get.find()));
  }
}
