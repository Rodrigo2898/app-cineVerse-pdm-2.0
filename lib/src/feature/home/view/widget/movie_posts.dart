import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MoviePosts extends StatelessWidget {
  final String avatar;
  final String username;
  final String name;
  final String timeAgo;
  final String text;
  final String comments;
  final String retweets;
  final String favorites;

  const MoviePosts({
    Key? key,
    required this.avatar,
    required this.username,
    required this.name,
    required this.timeAgo,
    required this.text,
    required this.comments,
    required this.retweets,
    required this.favorites}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color:const Color.fromARGB(255, 1, 4, 34),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          moviePostAvatar(),
          moviePostBody(),
        ],
      ),
    );
  }

  Widget moviePostAvatar() {
    return Container(
      margin: const EdgeInsets.all(10.0),
      child: CircleAvatar(
        backgroundImage: NetworkImage(avatar),
      ),
    );
  }

  Widget moviePostBody() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          moviePostHeader(),
          moviePostText(),
          moviePostButtons(),
        ],
      ),
    );
  }

  Widget moviePostHeader() {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 5.0),
          child: Text(
            username,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Text(
          '@$name · $timeAgo',
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        const Spacer(),
        IconButton(
          icon: const Icon(
            FontAwesomeIcons.angleDown,
            size: 14.0,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ],
    );
  }

   Widget moviePostText() {
    return Text(
      text,
      overflow: TextOverflow.clip,
    );
  }

  Widget moviePostButtons() {
    return Container(
      margin: const EdgeInsets.only(top: 10.0, right: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          movieIconButton(FontAwesomeIcons.comment, comments),
          movieIconButton(FontAwesomeIcons.retweet, retweets),
          movieIconButton(FontAwesomeIcons.heart, favorites),
          movieIconButton(FontAwesomeIcons.share, ''),
        ],
      ),
    );
  }

  Widget movieIconButton(IconData icon, String text) {
    return Row(
      children: [
        Icon(
          icon,
          size: 16.0,
          color: Colors.blueAccent,
        ),
        Container(
          margin: const EdgeInsets.all(6.0),
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.cyan,
              fontSize: 14.0,
            ),
          ),
        ),
      ],
    );
  }
}