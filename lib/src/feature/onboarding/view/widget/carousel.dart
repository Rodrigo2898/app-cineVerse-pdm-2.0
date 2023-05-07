
import 'package:flutter/material.dart';

class Carousel extends StatelessWidget {
  const Carousel({Key? key, this.text, this.title}): super(key: key);

  final String? text;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 60,
          child: Text(
            title!,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 34,
              color: Color.fromARGB(201, 157, 125, 106),
              fontWeight: FontWeight.bold,
              shadows: [
                Shadow(
                  color: Colors.black,
                  offset: Offset(-2, 2),
                  blurRadius: 2,
                )
              ],
            ),
          ),
        ),
        Container(
          height: 300,
          width: 800,
          margin: const EdgeInsets.all(50),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 120, 64, 64),
              boxShadow: const [
                BoxShadow(
                  blurRadius: 30.0,
                  blurStyle: BlurStyle.inner,
                  offset: Offset(-14, 18),
                ),
              ]),
          child: Center(
            child: Text(
              text!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                height: 2,
                fontSize: 20,
                fontStyle: FontStyle.italic,
                color: Color.fromARGB(200, 0, 0, 0),
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ],
    );
  }
}