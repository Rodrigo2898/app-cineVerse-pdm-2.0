import 'package:cineverse_app/src/component/movie_item.dart';
import 'package:cineverse_app/src/feature/home/repository/model/movie_list.dart';
import 'package:cineverse_app/src/feature/home/repository/model/movie_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MovieGrid extends StatelessWidget {

  final bool showFavoriteOnly;

  const MovieGrid(this.showFavoriteOnly,{super.key});
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<MovieList>(context);
    final List<Movie> loaderMovies = showFavoriteOnly ? provider.favoriteMovies : provider.items;
    
    return GridView.builder (
      padding: const EdgeInsets.all(10.0),
      itemCount: loaderMovies.length,
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        value: loaderMovies[i],
        child: const MovieItem(),
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}