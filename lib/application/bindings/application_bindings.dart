import 'package:get/get.dart';
import 'package:moviesapp/application/auth/auth_service.dart';
import 'package:moviesapp/application/rest_client/rest_client.dart';
import 'package:moviesapp/repositories/login/login_repository.dart';
import 'package:moviesapp/repositories/login/login_repository_impl.dart';
import 'package:moviesapp/repositories/movies/movies_repository.dart';
import 'package:moviesapp/repositories/movies/movies_repository_impl.dart';
import 'package:moviesapp/services/login/login_service.dart';
import 'package:moviesapp/services/login/login_service_impl.dart';
import 'package:moviesapp/services/services/movies_service.dart';
import 'package:moviesapp/services/services/movies_service_impl.dart';

class ApplicationBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RestClient(), fenix: true);
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

    Get.lazyPut<MoviesRepository>(
        () => MoviesRepositoryImpl(
              restClient: Get.find(),
            ),
        fenix: true);
    Get.lazyPut<MoviesService>(
      () => MoviesServiceImpl(
        moviesRepository: Get.find(),
      ),
      fenix: true,
    );
  }
}
