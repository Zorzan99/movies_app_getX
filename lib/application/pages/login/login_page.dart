import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:get/get.dart';
import 'package:moviesapp/application/pages/login/login_controller.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.asset(
            'assets/images/background.png',
            fit: BoxFit.cover,
            height: Get.height,
            width: Get.width,
          ),
          Container(
            color: Colors.black38,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Column(
              children: [
                Image.asset('assets/images/logo.png'),
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  width: Get.width * 0.8,
                  height: 42,
                  child: SignInButton(
                    text: 'Entrar com o Google',
                    Buttons.Google,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    onPressed: () {
                      controller.login();
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
