import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:moviesapp/application/modules/module.dart';
import 'package:moviesapp/application/pages/splash/splash_binding.dart';
import 'package:moviesapp/application/pages/splash/splash_page.dart';

class SplashModule implements Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/',
      page: () => const SplashPage(),
      binding: SplashBinding(),
    ),
  ];
}
