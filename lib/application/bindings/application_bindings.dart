import 'package:get/get.dart';
import 'package:moviesapp/application/auth/auth_service.dart';
import 'package:moviesapp/repositories/login/login_repository.dart';
import 'package:moviesapp/repositories/login/login_repository_impl.dart';
import 'package:moviesapp/services/login/login_service.dart';
import 'package:moviesapp/services/login/login_service_impl.dart';

class ApplicationBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginRepository>(
      () => LoginRepositoryImpl(),
      fenix: true,
    );
    Get.lazyPut<LoginService>(
      () => LoginServiceImpl(
        loginRepository: Get.find(),
      ),
      fenix: true,
    );
    Get.put(AuthService()).init();
  }
}
