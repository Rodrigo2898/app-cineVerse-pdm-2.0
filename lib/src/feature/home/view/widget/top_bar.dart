import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 180,
      decoration: BoxDecoration(
        color: Colors.green,
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.black.withOpacity(.8),
            Colors.black.withOpacity(.7),
            Colors.black.withOpacity(0),
          ],
        )
      ),
      child: const SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.all(4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 40,
                    height: 40,
                    child: CircleAvatar(
                      backgroundImage: Svg('lib/assets/images/avatar.svg'),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.cast_outlined),
                Icon(Icons.search),
                Icon(Icons.person),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            SizedBox(height: .1,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Filmes"),
                  Text("Séries"),
                  Text("Documentários"),
                ],
              ),
          ],
        ),
      ),
    );
  }
}