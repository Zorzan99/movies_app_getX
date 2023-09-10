import 'package:moviesapp/models/genre_model.dart';

abstract interface class GenresRepository {
  Future<List<GenreModel>> getGenres();
}
