import 'package:flutter/material.dart';
import 'package:cineverse_app/src/component/minha_appBar.dart';

class UserPost extends StatelessWidget {
  const UserPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor:  const Color.fromARGB(255, 20, 5, 77),
      appBar: MinhaAppBar(
        title: const Text("TESTANDO 123"),
      ),
      body: const Center(
        child: Text('POST', style: TextStyle(fontSize: 48))),
    );
  }
}