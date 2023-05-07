import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:localization/localization.dart';

import '../../viewmodel/login_viewmodel.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool obscureText = true;
  final _emailController = TextEditingController();
  final _nameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _passwordConfirmationController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final _viewModel = Modular.get<LoginViewModel>();

  Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: const Color.fromARGB(255, 245, 239, 222),
    body: Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
               Center(
                child: Text(
                  'idioma'.i18n(),
                  style: const TextStyle(
                    height: -11,
                    fontSize: 15,
                    color: Color.fromRGBO(70, 70, 60, 1),
                  ),
                ),
              ),
               Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Color.fromRGBO(175, 175, 153, 1),
                    hintText: 'email',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Color.fromRGBO(175, 175, 153, 1),
                    hintText: 'nome',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _passwordController,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Color.fromRGBO(175, 175, 153, 1),
                    hintText: 'senha',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _passwordConfirmationController,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Color.fromRGBO(175, 175, 153, 1),
                    hintText: 'confirmar senha',
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const ElevatedButton(
                onPressed: null,
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    Color.fromRGBO(70, 70, 60, 1),
                  ),
                ),
                child: Text('Registrar',style: TextStyle(color: Colors.black),),
              ),
               Center(
                child: Text(
                  'Menssagem'.i18n(),
                  style: const TextStyle(
                    height: 0,
                    fontSize: 15,
                    color: Color.fromRGBO(70, 70, 60, 1),
                  ),
                ),
              ),
               ElevatedButton(
                onPressed: () async => {Navigator.pushNamed(context, '/')},
                style: const ButtonStyle(shadowColor: MaterialStatePropertyAll(Colors.transparent),
                  backgroundColor: MaterialStatePropertyAll(
                    Colors.transparent,
                  ),
                ),
                child: const Text('Entrar',style: TextStyle(color: Colors.black),),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
}