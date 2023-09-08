import 'dart:developer';

import 'package:get/get.dart';
import 'package:moviesapp/application/ui/loader/loader_mixin.dart';
import 'package:moviesapp/application/ui/messages/messages_mixin.dart';
import 'package:moviesapp/services/login/login_service.dart';

class LoginController extends GetxController with LoaderMixin, MessagesMixin {
  final LoginService _loginService;
  final loading = false.obs;
  final message = Rxn<MessageModel>();
  LoginController({
    required LoginService loginService,
  }) : _loginService = loginService;

  @override
  void onInit() {
    super.onInit();
    loaderListener(loading);
    messageListener(message);
  }

  Future<void> login() async {
    try {
      loading(true);
      await _loginService.login();
      loading(false);
      message(MessageModel.info(
          title: 'Login Realizado', message: 'Login Realizado com sucesso'));
    } catch (e, s) {
      log('Erro ao realizar login', error: e, stackTrace: s);
      loading(false);

      message(MessageModel.error(
          title: 'Login error', message: 'Erro ao realizar login'));
    }
  }
}
