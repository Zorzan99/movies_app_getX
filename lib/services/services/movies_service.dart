import 'package:moviesapp/models/movie_detail_model.dart';
import 'package:moviesapp/models/movie_model.dart';

abstract interface class MoviesService {
  Future<List<MovieModel>> getPopularMovies();
  Future<List<MovieModel>> getTopRated();
  Future<MovieDetailModel?> getDetail(int id);
  Future<void> addOrRemoveFavorite(String userId, MovieModel movie);
  Future<List<MovieModel>> getFavoritesMovies(String userId);
}
