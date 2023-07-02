import 'package:cineverse_app/src/feature/home/repository/mock_data/dummy_data.dart';
import 'package:cineverse_app/src/feature/home/repository/model/movie_model.dart';
import 'package:flutter/material.dart';

class MovieList with ChangeNotifier {
  final List<Movie> _items = dummyMovies;
  List<Movie> get items => [..._items];
  List<Movie> get favoriteMovies => _items.where((movie) => movie.isFavorite).toList();

  void addFavoriteMovie(Movie movie) {
    _items.add(movie);
    notifyListeners();
  }
}