import 'package:flutter/material.dart';

class Movie with ChangeNotifier{
  final String id;
  final String name;
  final String sinopsis;
  final String genre;
  final double rating;
  final String imageUrl;
  bool isFavorite;

  Movie({
    required this.id,
    required this.name,
    required this.sinopsis,
    required this.genre,
    required this.rating,
    required this.imageUrl,
    this.isFavorite = false,
  });

  void toggleFavorite() {
    isFavorite = !isFavorite;
    notifyListeners();
  }
}