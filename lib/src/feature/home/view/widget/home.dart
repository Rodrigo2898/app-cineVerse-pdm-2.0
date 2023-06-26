import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:localization/localization.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/*PreferredSizeWidget _minhaBarra(String texto) {
  return AppBar(
    shadowColor: Colors.amber,
    backgroundColor: Colors.black45,
    elevation: 18,
    title: Text(
      texto,
      style: const TextStyle(color: Colors.amber),
    ),
  );
} */

class UserHome extends StatelessWidget {
  const UserHome({super.key});

  PreferredSizeWidget _appBar(BuildContext context) {
    return AppBar(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Theme.of(context).canvasColor,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Row(
        children: [
          Expanded(
            child: Text(
              'app_name'.i18n(),
              style: const TextStyle(
                color: Color.fromARGB(255, 195, 188, 167),
                fontSize: 30,
              ),        
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(24.0),
            child: Icon(
              Icons.favorite_border,
              color: Color.fromARGB(255, 117, 113, 101),
            ),
          ),
          IconButton(
            onPressed: () {}, 
            icon: const Icon(
              Icons.search,
              color: Color.fromARGB(255, 117, 113, 101),
              ),
          )
        ],
      ),
    );
  }


  Widget listOfPublis() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.all(10.0),
          child: const CircleAvatar(
            backgroundImage: Svg('lib/assets/images/avatar.svg'),
          ),
        ),
        homeBody(),
      ],
    );
  }

  Widget homeBody() {
    return Expanded(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 5.0),
                child: const Text(
                  'User',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Text(
                '@userTest . 2h',
                style: TextStyle(
                  color: Colors.grey
                ),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {}, 
                icon: const Icon(
                  FontAwesomeIcons.angleDown,
                  size: 14.0,
                  color: Colors.grey,
                ),
              )
            ],
          ),
        ],
        ), 
      );
  }

  Widget textExample() {
    return const Expanded (
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
              style: TextStyle(
                color: Colors.black,
              ),
              )
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color.fromARGB(255, 20, 5, 77),
      appBar: _appBar(context),
      body: listOfPublis(),
    );
  }
}