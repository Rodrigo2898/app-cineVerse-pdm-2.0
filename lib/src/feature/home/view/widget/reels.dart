import 'package:flutter/material.dart';

class UserReels extends StatelessWidget {
  const UserReels({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor:   Color.fromARGB(255, 20, 5, 77),
      body: Center(child: Text('REELS', style: TextStyle(fontSize: 48))),
    );
  }
}