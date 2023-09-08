import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:moviesapp/application/modules/module.dart';
import 'package:moviesapp/application/pages/home/home_bindings.dart';
import 'package:moviesapp/application/pages/home/home_page.dart';

class HomeModule implements Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/home',
      page: () => const HomePage(),
      binding: HomeBindings(),
    ),
  ];
}
