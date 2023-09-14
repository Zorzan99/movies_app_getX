import 'package:moviesapp/models/movie_model.dart';

abstract interface class MoviesRepository {
  Future<List<MovieModel>> getPopularMovies();
  Future<List<MovieModel>> getTopRated();
}
