import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:moviesapp/application/pages/favorites/favorites_binding.dart';
import 'package:moviesapp/application/pages/favorites/favorites_page.dart';
import 'package:moviesapp/application/pages/home/home_controller.dart';
import 'package:moviesapp/application/pages/movies/movies_binding.dart';
import 'package:moviesapp/application/pages/movies/movies_page.dart';
import 'package:moviesapp/application/ui/filmes_app_icons.dart';
import 'package:moviesapp/application/ui/theme_extensions.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
            selectedItemColor: context.themeRed,
            unselectedItemColor: Colors.grey,
            onTap: controller.goToPage,
            currentIndex: controller.pageIndex,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.movie),
                label: 'Filmes',
              ),
              BottomNavigationBarItem(
                icon: Icon(Moviesapp.heart_empty),
                label: 'Favoritos',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.logout_outlined),
                label: 'Sair',
              ),
            ]);
      }),
      body: Navigator(
        initialRoute: '/movies',
        key: Get.nestedKey(HomeController.navigatorKey),
        onGenerateRoute: (settings) {
          if (settings.name == '/movies') {
            return GetPageRoute(
              settings: settings,
              page: () => const MoviesPage(),
              binding: MoviesBinding(),
            );
          }
          if (settings.name == '/favorites') {
            return GetPageRoute(
              settings: settings,
              page: () => const FavoritesPage(),
              binding: FavoritesBinding(),
            );
          }
          return null;
        },
      ),
    );
  }
}
