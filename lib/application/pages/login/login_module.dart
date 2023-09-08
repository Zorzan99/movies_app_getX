import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:moviesapp/application/modules/module.dart';
import 'package:moviesapp/application/pages/login/login_bindings.dart';
import 'package:moviesapp/application/pages/login/login_page.dart';

class LoginModule implements Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/login',
      page: () => const LoginPage(),
      binding: LoginBindings(),
    )
  ];
}
