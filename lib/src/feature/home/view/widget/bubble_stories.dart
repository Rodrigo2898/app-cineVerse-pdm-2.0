import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class BubbleStorie extends StatelessWidget {
  const BubbleStorie(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color.fromARGB(255, 138, 89, 89),
            image: DecorationImage(
              image: Svg('lib/assets/images/avatar.svg'),
            ),
          ),
        )
      ],
    );
  }
}