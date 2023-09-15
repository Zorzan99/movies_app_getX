import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:moviesapp/application/modules/module.dart';
import 'package:moviesapp/application/pages/movie_detail/movie_detail_bindings.dart';
import 'package:moviesapp/application/pages/movie_detail/movie_detail_page.dart';

class MovieDetailModule implements Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/movie/detail',
      page: () => const MovieDetailPage(),
      binding: MovieDetailBindings(),
    ),
  ];
}
