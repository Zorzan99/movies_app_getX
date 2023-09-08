import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:moviesapp/application/bindings/application_bindings.dart';
import 'package:moviesapp/application/pages/home/home_module.dart';
import 'package:moviesapp/application/pages/login/login_module.dart';
import 'package:moviesapp/application/pages/splash/splash_module.dart';
import 'package:moviesapp/application/ui/filmes_app_ui_config.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseRemoteConfig.instance.fetchAndActivate();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: FilmesAppUiConfig.title,
      initialBinding: ApplicationBindings(),
      debugShowCheckedModeBanner: false,
      theme: FilmesAppUiConfig.theme,
      getPages: [
        ...SplashModule().routers,
        ...LoginModule().routers,
        ...HomeModule().routers,
      ],
    );
  }
}
