import 'package:cineverse_app/src/feature/home/view/widget/movie_card.dart';
import 'package:cineverse_app/src/feature/home/view/widget/top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MoviesPage extends StatefulWidget {
  const MoviesPage({super.key});

  @override
  State<MoviesPage> createState() => _MoviesPageState();
}

class _MoviesPageState extends State<MoviesPage> {
  bool _showTobBar = true;
  bool _flag = true;
  ScrollController? controller;

  @override
  void initState() {
    super.initState();
    controller = ScrollController();
    controller?.addListener(() {
      _flag = controller?.position.userScrollDirection == ScrollDirection.forward;
      if (_showTobBar != _flag) setState(() {});
      _showTobBar = _flag;
    });
  }
  @override
   Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            controller: controller,
            physics: const BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
               /* const SpecialMovie(
                  image: "lib/assets/images/posters/bettercallsaul.jpg",
                ),*/
                const SizedBox(height: .1),
                loadPopularOnNetflix(),
                const SizedBox(height: .1),
                loadTrendingNow(),
                const SizedBox(height: .1),
                loadNewReleases(),
                const SizedBox(height: .1),
              ],
            ),
          ),
          AnimatedPositioned(
            top: _showTobBar ? 0 : -80,
            duration: const Duration(milliseconds: 300),
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 300),
              opacity: _showTobBar ? 1 : 0,
              child: IgnorePointer(
                ignoring: !_showTobBar,
                child: const TopBar(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget loadPopularOnNetflix() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
         Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            "Popular on Netflix",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: 10),
          physics: BouncingScrollPhysics(),
          child: Row(
            children: [
              MovieCard(
                image: AssetImage("lib/assets/images/posters/breakingbad.jpg"),
              ),
              SizedBox(
                width: 10,
              ),
              MovieCard(
                image: AssetImage("lib/assets/images/posters/bettercallsaul.jpg"),
              ),
              SizedBox(
                width: 10,
              ),
              MovieCard(
                image: AssetImage("lib/assets/images/posters/deathnote.jpg"),
              ),
              SizedBox(
                width: 10,
              ),
              MovieCard(
                image: AssetImage("lib/assets/images/posters/blackmirror.jpg"),
              ),
              SizedBox(
                width: 10,
              ),
              MovieCard(
                image: AssetImage("lib/assets/images/posters/thecrown.jpg"),
              ),
              SizedBox(
                width: 10,
              ),
              MovieCard(
                image: AssetImage("lib/assets/images/posters/joker.jpg"),
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget loadTrendingNow() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            "Trending Now",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: 10),
          physics: BouncingScrollPhysics(),
          child: Row(
            children: [
              MovieCard(
                image: AssetImage("lib/assets/images/posters/joker.jpg"),
              ),
              SizedBox(
                width: 10,
              ),
              MovieCard(
                image: AssetImage("lib/assets/images/posters/pulpfiction.jpg"),
              ),
              SizedBox(
                width: 10,
              ),
              MovieCard(
                image: AssetImage("lib/assets/images/posters/breakingbad.jpg"),
              ),
              SizedBox(
                width: 10,
              ),
              MovieCard(
                image: AssetImage("lib/assets/images/posters/wednesday.jpg"),
              ),
              SizedBox(
                width: 10,
              ),
              MovieCard(
                image: AssetImage("lib/assets/images/posters/thecrown.jpg"),
              ),
              SizedBox(
                width: 10,
              ),
              MovieCard(
                image: AssetImage("lib/assets/images/posters/pulpfiction.jpg"),
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget loadNewReleases() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            "New Releases",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: 10),
          physics: BouncingScrollPhysics(),
          child: Row(
            children: [
              MovieCard(
                image: AssetImage("lib/assets/images/posters/pulpfiction.jpg"),
              ),
              SizedBox(
                width: 10,
              ),
              MovieCard(
                image: AssetImage("lib/assets/images/posters/breakingbad.jpg"),
              ),
              SizedBox(
                width: 10,
              ),
              MovieCard(
                image: AssetImage("lib/assets/images/posters/deathnote.jpg"),
              ),
              SizedBox(
                width: 10,
              ),
              MovieCard(
                image: AssetImage("lib/assets/images/posters/thecrown.jpg"),
              ),
              SizedBox(
                width: 10,
              ),
              MovieCard(
                image: AssetImage("lib/assets/images/posters/joker.jpg"),
              ),
              SizedBox(
                width: 10,
              ),
              MovieCard(
                image: AssetImage("lib/images/movies/bettercallsaul.jpg"),
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
      ],
    );
  }
}