import 'package:cineverse_app/src/feature/home/repository/model/movie_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MovieItem extends StatelessWidget {
  const MovieItem({super.key});

  @override
  Widget build(BuildContext context) {
    final movie = Provider.of(context, listen: false);

    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          leading: Consumer<Movie>(
            builder: (ctx, movie, _) => IconButton(
              onPressed: () {
                movie.toggleFavorite();
              },
              icon: Icon(
                movie.isFavorite ? Icons.favorite : Icons.favorite_border
              ),
              color: Theme.of(context).primaryColor,
            ),
          ),
          title: Text(
            movie.name,
            textAlign: TextAlign.center,
          ),
    
        ),
        child: GestureDetector(
          child: Image.network(
            movie.imageUrl,
            fit: BoxFit.cover,
          ),
          /*onTap: () {
            Navigator.of(context).pushNamed(
              AppRoutes.PRODUCT_DETAIL,
              arguments: movie,
            );
          },*/
        ),
      ),
    );
  }
}