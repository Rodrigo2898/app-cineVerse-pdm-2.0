import 'package:flutter/material.dart';

class UserAccount extends StatelessWidget {
  const UserAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor:  Color.fromARGB(255, 20, 5, 77),
      body: Center(child: Text('ACCOUNT', style: TextStyle(fontSize: 48))),
    );
  }
}