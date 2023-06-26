import 'package:cineverse_app/src/component/movie_grid.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';

enum FilterOptions {
  Favorite,
  All,
}

class UserReels extends StatefulWidget {
  const UserReels({ Key? key }) : super(key: key);

  @override
  State<UserReels> createState() => _MoviesOverviewPage();
}

class _MoviesOverviewPage extends State<UserReels> {
  bool _showFavoriteOnly = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'app_name'.i18n(),
          style: const TextStyle(
                color: Color.fromARGB(255, 195, 188, 167),
                fontSize: 30,
          ),
        ),
        actions: [
          PopupMenuButton(
            icon: const Icon(Icons.more_vert),
            itemBuilder: (_) => [
              const PopupMenuItem(
                value: FilterOptions.Favorite,
                child: Text('Somente Favoritos'),
              ),
              const PopupMenuItem(
                value: FilterOptions.Favorite,
                child: Text('Todos'),
              ),
            ],
            onSelected: (FilterOptions selectedValue) {
              setState(() {
                if (selectedValue == FilterOptions.Favorite) {
                  _showFavoriteOnly = true;
                } else {
                  _showFavoriteOnly = false;
                }
              });
            },
          ),
        ],
      ),
      body: MovieGrid(_showFavoriteOnly),
    );
  }
}