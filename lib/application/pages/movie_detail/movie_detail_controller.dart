import 'dart:developer';

import 'package:get/get.dart';
import 'package:moviesapp/application/ui/loader/loader_mixin.dart';
import 'package:moviesapp/application/ui/messages/messages_mixin.dart';
import 'package:moviesapp/models/movie_detail_model.dart';
import 'package:moviesapp/services/services/movies_service.dart';

class MovieDetailController extends GetxController
    with LoaderMixin, MessagesMixin {
  final MoviesService _moviesService;

  var loading = false.obs;
  var message = Rxn<MessageModel>();
  var movie = Rxn<MovieDetailModel>();

  MovieDetailController({required MoviesService moviesService})
      : _moviesService = moviesService;

  @override
  void onInit() {
    super.onInit();
    loaderListener(loading);
    messageListener(message);
  }

  @override
  Future<void> onReady() async {
    super.onReady();
    try {
      final movieId = Get.arguments;
      loading(true);
      final movieDetailData = await _moviesService.getDetail(movieId);
      movie.value = movieDetailData;
      loading(false);
    } catch (e, s) {
      log('Erro', error: e, stackTrace: s);
      loading(false);
      MessageModel.error(
          title: 'Erro', message: 'Erro ao buscar detalhe do filme');
    }
  }
}
